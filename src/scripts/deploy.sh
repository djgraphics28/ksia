
# Create a backup of the original .env file
cp .env .env.backup

cat .env.ci > .env
sed -i '' "s|^APP_URL=.*|APP_URL=${APP_URL}|" .env
sed -i '' "s|^APP_ENV=.*|APP_ENV=production|" .env
sed -i '' "s|^DB_DATABASE=.*|DB_DATABASE=${DB_DATABASE}|" .env
sed -i '' "s|^DB_USERNAME=.*|DB_USERNAME=${DB_USERNAME}|" .env
sed -i '' "s|^DB_PASSWORD=.*|DB_PASSWORD=${DB_PASSWORD}|" .env
sed -i '' "s|^DEPLOYMENT_KEY=.*|DEPLOYMENT_KEY=${DEPLOYMENT_KEY}|" .env
sed -i '' "s|^FILESYSTEM_DISK=.*|FILESYSTEM_DISK=${FILESYSTEM_DISK}|" .env
sed -i '' "s|^PREPARE_RELEASE_FILES=.*|PREPARE_RELEASE_FILES=${PREPARE_RELEASE_FILES}|" .env
sed -i '' "s|^INSTALL_DEMO_DATA=.*|INSTALL_DEMO_DATA=${INSTALL_DEMO_DATA}|" .env
sed -i '' "s|^APP_INSTALLED=.*|APP_INSTALLED=${APP_INSTALLED}|" .env
sed -i '' "s|^IS_DEMO=.*|IS_DEMO=${IS_DEMO}|" .env
sed -i '' "s|^IS_DEV=.*|IS_DEV=${IS_DEV}|" .env


# Cache Composer Dependencies
# shellcheck disable=SC2034
composer_cache_dir=$(composer config cache-files-dir)
composer clear-cache

# Install Composer Dependencies
rm composer.lock
composer install --no-dev

# Generate Application Key
php artisan key:generate

# Publish Vendor Files
php artisan vendor:publish --tag=gainhq-installer --force

# Install Node Dependencies and Build Project
npm install
npm run prod

# Create Deployment ZIP File
zip -r archive.zip ./ -x ".git/*" -x ".github/*" -x "node_modules/*"

# Create Un zipper Script
# shellcheck disable=SC2028
echo "<?php
  \$key = trim(\$_REQUEST['key']);
  if (!\$key) {
    die('Key is not valid!');
  }
  if(\$key != 123456) {
    die('Deployment key not matched!');
  }
  \$dir = \"./\";
   \$di = new RecursiveDirectoryIterator(\$dir, FilesystemIterator::SKIP_DOTS);
   \$ri = new RecursiveIteratorIterator(\$di, RecursiveIteratorIterator::CHILD_FIRST);
   foreach ( \$ri as \$file ) {
     \$allowed = [\"archive.zip\", \"extract.php\"];
     if(!in_array(\$file->getBasename(), \$allowed)) {
       \$file->isDir() ?  rmdir(\$file) : unlink(\$file);
     }
   }
  \$zip = new ZipArchive;
  if (\$zip->open(\"archive.zip\") === TRUE) {
    \$zip->extractTo('./');
    \$zip->close();
    echo \"archive.zip extracted 🍻 \r\n \";
    if(unlink(\"archive.zip\")) {
      echo \"archive.zip deleted 🍦 \r\n \";
    }
    if(unlink(\"extract.php\")) {
      echo \"extract.php deleted itself! 🤏 \r\n \";
    }
  }
  else {
    echo 'failed!';
  }
?>" > extract.php


# Deploy ZIP File via FTP
curl -T archive.zip -u "${USERNAME}:${PASSWORD}" ftp://"${SERVER}"/
curl -T extract.php -u "${USERNAME}:${PASSWORD}" ftp://"${SERVER}"/
#
#Extract zip file
curl "${APP_URL}/original/extract.php?key=${DEPLOYMENT_KEY}"

#remove_all_except_original_recursive
curl "${APP_URL}/original/deploy.php?action=remove_all_except_original_recursive&key=${DEPLOYMENT_KEY}"

#prepare_src_folder
curl "${APP_URL}/deploy.php?action=prepare_src_folder&key=${DEPLOYMENT_KEY}"

#move_all_from_public_to_root
curl "${APP_URL}/deploy.php?action=move_all_from_public_to_root&key=${DEPLOYMENT_KEY}"

#change_path_in_index
curl "${APP_URL}/deploy.php?action=change_path_in_index&key=${DEPLOYMENT_KEY}"

#prepare_marketplace_version
curl "${APP_URL}/deploy.php?action=prepare_marketplace_version&key=${DEPLOYMENT_KEY}"

#install_demo_data
curl "${APP_URL}/install-demo-data"

#maintenance_mode_off
curl "${APP_URL}/deploy.php?action=maintenance_mode_off&key=${DEPLOYMENT_KEY}"

# Restore the original .env file
mv .env.backup .env

# Final cleanup
# ... (rest of the script)

# Remove the backup of the .env file
rm .env.backup
rm archive.zip
rm extract.php

git checkout composer.lock
git checkout yarn.lock
git checkout package-lock.json