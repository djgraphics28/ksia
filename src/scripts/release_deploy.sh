#!/bin/bash
# Run cmd to deploy
# chmod +x scripts/release_deploy.sh scripts/deploy.sh && ./scripts/release_deploy.sh

# Environment variables
export APP_URL="https://jobpoint.gainhq.com"
export DB_DATABASE="jobpointpro_demo"
export DB_USERNAME="jobpointpro_demo"
export DB_PASSWORD="asdasd54as1d2asd21"

export SERVER="ftp.jobpoint.gainhq.com"
export USERNAME="github@jobpoint.gainhq.com"
export PASSWORD="ads2as4d1as2d"

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