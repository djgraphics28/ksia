#!/bin/bash
# Run cmd to deploy
# chmod +x scripts/dev_deploy.sh scripts/deploy.sh && ./scripts/dev_deploy.sh

# Environment variables
export APP_URL="https://dev.jobpointdev.gainhq.com"
export DB_DATABASE="jobpointdev_dev"
export DB_USERNAME="jobpointdev_dev"
export DB_PASSWORD="51421asd212asd"

export SERVER="ftp.jobpointdev.gainhq.com"
export USERNAME="dev@dev.jobpointdev.gainhq.com"
export PASSWORD="52a3sd3asd5asd234"

export INSTALL_DEMO_DATA=true
export DEPLOYMENT_KEY="123456"
export PREPARE_RELEASE_FILES="false"
export MARKET_PLACE_VERSION="false"
export IS_DEMO="true"
export IS_DEV="true"
export FILESYSTEM_DISK="public"
export APP_INSTALLED="true"

source "$(dirname "${BASH_SOURCE[0]}")/deploy.sh"

echo -e "\033[0;32m Deployment completed... 👏👏👏"
echo -e "visit the app ${APP_URL}"