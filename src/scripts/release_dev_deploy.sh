#!/bin/bash
# Run cmd to deploy
# chmod +x scripts/release_deploy.sh scripts/deploy.sh && ./scripts/release_dev_deploy.sh

# Environment variables
export APP_URL="https://jobpointdev.gainhq.com"
export DB_DATABASE="jobpointdev_release"
export DB_USERNAME="jobpointdev_release"
export DB_PASSWORD="541as1d2a1sd421sa"

export SERVER="ftp.jobpointdev.gainhq.com"
export USERNAME="release@jobpointdev.gainhq.com"
export PASSWORD="as5d1as2d15asd2as1"

export INSTALL_DEMO_DATA=true
export DEPLOYMENT_KEY="123456"
export PREPARE_RELEASE_FILES="false"
export MARKET_PLACE_VERSION="true"
export APP_INSTALLED="true"
export IS_DEMO="true"
export IS_DEV="true"

source "$(dirname "${BASH_SOURCE[0]}")/deploy.sh"

echo -e "\033[0;32m Deployment completed... 👏👏👏"
echo -e "visit the app ${APP_URL}"