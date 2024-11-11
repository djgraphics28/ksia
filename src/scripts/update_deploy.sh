#!/bin/bash
# chmod +x scripts/update_deploy.sh && ./scripts/update_deploy.sh

# Define environment variables from YAML
export SERVER="ftp.jobpointdev.gainhq.com"
export USERNAME="test@test.jobpointdev.gainhq.com"
export PASSWORD="5a4sd212asd42212asd4"

## Create a temporary directory
#TEMP_DIR=$(mktemp -d)

rmdir "update_folder"

# Create the destination folder if it doesn't exist
mkdir -p update_folder/old
chmod -R 777 update_folder
cp -R .git update_folder/old/.git

mkdir -p update_folder/new
cp -R .git update_folder/new/.git

echo "Copying completed"

mv .git .git_backup
cd 'update_folder'

echo "get old release"
cd old
git reset --hard
git clean -fxd
git checkout release
git pull origin release

echo "preparing old release"
rm -rf .git
rm composer.lock
composer install --optimize-autoloader --no-dev
rm -rf ./scripts ./node_modules ./.github ./public/css/* ./public/js/* ./public/documentation
rm .env.ci .env.example .php_cs.dist .gitignore deploy.php ./public/mix-manifest.json
git init
git add .
git config --global user.name "hasan"
git config --global user.email "hasan@gain.media"
git commit -m 'First Commit'
echo "old release prepared"

echo "get new release"
cd ../new
git reset --hard
git clean -fxd
git checkout master
git pull origin master

echo "preparing new release"
#pwd
rm -rf .git
rm composer.lock
composer install --no-dev
npm install
npm run prod
rm -rf ./scripts ./node_modules ./.github ./public/documentation
rm .env.ci .env.example .php_cs.dist .gitignore deploy.php
rsync -aru ./ ../old
cd ../old
sed -i  "s/\/..\//\/src\//g" public/index.php
git add .
git commit -m 'Second Commit'
echo "new release prepared"

echo "generating update"

# Create an empty update.zip archive
# Temporary staging directory
staging_dir="generate_update"

# Create the staging directory if it doesn't exist
mkdir -p "$staging_dir"

echo "<?php

namespace app\Execute;

use Illuminate\Filesystem\Filesystem;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Artisan;

class execute
{
    public function executeOperation(\$path, \$version)
    {
        // \$this->runMigration();
        // \$this->runSeeder();
        \$this->cacheClear();
        // \$this->sqlExecution(\$path, \$version);
        \$this->updateAppVersion(\$path, \$version);
    }

    public function runMigration()
    {
        try {
            Artisan::call('migrate --force');
        } catch (\Exception \$e) {
            echo \$e->getMessage();
        }
    }

    public function runSeeder()
    {
        try {
            Artisan::call('db:seed --class=AppVersionUpdateSeeder --force');
        } catch (\Exception \$e) {
            echo \$e->getMessage();
        }
    }

    public function cacheClear()
    {
        try {
            Artisan::call('optimize:clear');
        } catch (\Exception \$e) {
            echo \$e->getMessage();
        }
    }

    public function sqlExecution(\$path, \$version)
    {
        \$File = new Filesystem;

        \$filePath = public_path(\$path . DIRECTORY_SEPARATOR . \$version . DIRECTORY_SEPARATOR . \$version . '.sql');

        if (\$File->exists(\$filePath)) {
            \$getFile = \$File->get(\$filePath);
            DB::connection()->getPdo()->exec(\$getFile);
        }
    }

    public function updateAppVersion(\$path, \$version)
    {
        \$File = new Filesystem;

        \$filePath = public_path(\$path . DIRECTORY_SEPARATOR . \$version . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'gain.php');

        if (\$File->exists(\$filePath)) {
            \$File->move(\$filePath, base_path('config' . DIRECTORY_SEPARATOR . 'gain.php'));
        }
    }
}
" > "$staging_dir/execute.php"

# Iterate over the files from git diff
git diff --name-only --diff-filter=ACMRT HEAD^ | while read -r file; do
    # Preserve folder structure using rsync
    rsync -R "$file" "$staging_dir/"
    # echo "Staged: $file"
done

# Add staged files to the update.zip archive
zip -qur update.zip "$staging_dir"

# Clean up the staging directory
rm -rf "$staging_dir"

echo "Archive creation completed"

zip -r mergedVendor.zip vendor/
mv update.zip ../
mv mergedVendor.zip ../

# move to folder
cd ..

echo "Deploying .... 🚀🚀🚀"
curl -T update.zip -u "${USERNAME}:${PASSWORD}" ftp://"${SERVER}/update.zip"

# FTP Deploy mergedVendor.zip
curl -T mergedVendor.zip -u "${USERNAME}:${PASSWORD}" ftp://"${SERVER}/mergedVendor.zip"

echo "Reset where it started"
cd ..
rm -rf update_folder
mv .git_backup .git
echo -e "\033[0;32m Update script completed and reset to started... 👏👏👏"