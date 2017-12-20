#!/bin/bash

. ./scripts/config.sh

cd $CURRENT_DIR

export IBK_USER=XT8097
export IBK_PWD=PERU2017.
export BIT_BUCKET_USER=alejandroLabanInterbank
export BIT_BUCKET_PWD=PERU2017.


mkdir -p $SOURCES_BASE_PATH
cd $SOURCES_BASE_PATH

git config --global http.proxy "http://IB_LIMA_MASTER%5C${IBK_USER}:${IBK_PWD}@fwproxy-nlb.grupoib.local:80"
git config --global https.proxy "https://IB_LIMA_MASTER%5C${IBK_USER}:${IBK_PWD}@fwproxy-nlb.grupoib.local:80"

git config credential.helper store


git clone https://$BIT_BUCKET_USER:$BIT_BUCKET_PWD@bitbucket.org/ibkteam/digital-channels-core.git
git clone https://$BIT_BUCKET_USER:$BIT_BUCKET_PWD@bitbucket.org/ibkteam/digital-channels-mq.git
git clone https://$BIT_BUCKET_USER:$BIT_BUCKET_PWD@bitbucket.org/ibkteam/excelsys-migration.git
git clone https://$BIT_BUCKET_USER:$BIT_BUCKET_PWD@bitbucket.org/ibkteam/digital-channels-proxy.git

git clone https://$BIT_BUCKET_USER:$BIT_BUCKET_PWD@bitbucket.org/ibkteam/interbank-common-application-architecture.git
git clone https://$BIT_BUCKET_USER:$BIT_BUCKET_PWD@bitbucket.org/ibkteam/bpi-web-app.git

git clone https://$BIT_BUCKET_USER:$BIT_BUCKET_PWD@bitbucket.org/ibkteam/bpi-web-app-front.git


