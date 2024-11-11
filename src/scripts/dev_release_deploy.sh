#!/bin/bash
# Run cmd to deploy
# chmod +x scripts/dev_release_deploy.sh scripts/deploy.sh && ./scripts/dev_release_deploy.sh

# Environment variables
export APP_URL="https://jobpointdev.gainhq.com"
export DB_DATABASE="jobpointdev_demo"
export DB_USERNAME="jobpointdev_demo"
export DB_PASSWORD="21as2d2as4d2ads21asd"

export SERVER="ftp.jobpointdev.gainhq.com"
export USERNAME="github@jobpointdev.gainhq.com"
export PASSWORD="5821asd21asd58121"

export INSTALL_DEMO_DATA=true
export DEPLOYMENT_KEY="123456"
export PREPARE_RELEASE_FILES="false"
export MARKET_PLACE_VERSION="false"
export IS_DEMO="true"

source "$(dirname "${BASH_SOURCE[0]}")/deploy.sh"

echo -e "\033[0;32m Deployment completed... 👏👏👏"
echo -e "visit the app ${APP_URL}"