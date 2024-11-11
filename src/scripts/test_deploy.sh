#!/bin/bash
# Run cmd to deploy
# chmod +x scripts/test_deploy.sh scripts/deploy.sh && ./scripts/test_deploy.sh


# Environment variables
export APP_URL="https://test.jobpointdev.gainhq.com"
export DB_DATABASE=""
export DB_USERNAME=""
export DB_PASSWORD=""

export SERVER="ftp.jobpointdev.gainhq.com"
export USERNAME="test@test.jobpointdev.gainhq.com"
export PASSWORD="5a4sd212asd42212asd4"

export INSTALL_DEMO_DATA="false"
export DEPLOYMENT_KEY="123456"
export PREPARE_RELEASE_FILES="true"
export MARKET_PLACE_VERSION="false"
export IS_DEMO="false"
export IS_DEV="false"
export APP_INSTALLED="false"

source "$(dirname "${BASH_SOURCE[0]}")/deploy.sh"

echo -e "\033[0;32m Deployment completed... 👏👏👏"
echo -e "visit the app ${APP_URL}"