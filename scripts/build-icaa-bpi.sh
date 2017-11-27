#!/bin/bash

trap '[ "$?" -eq 0 ] || read -p "Looks like something went wrong in step ´$STEP´... Press any key to continue..."' EXIT

export CURRENT_DIR=${PWD}

export DEV_PATH=$CURRENT_DIR

#LEGACY
export CORE=digital-channels-core
export MQ=digital-channels-mq
export PROXY=digital-channels-proxy
export DAO=digital-channels-dao

export POM=-pom

#ICAA
export ICAA=interbank-common-application-architecture
export ICAA_CORE=icaa-core-parent

#BPI
export BPI=bpi-web-app

export PARENT=-parent

# BUILDING LEGACY
echo # BUILDING LEGACY

#CORE
cd $DEV_PATH/$CORE/$CORE$POM
#mvn clean install -Dmaven.test.skip=true

#MQ
cd $DEV_PATH/$MQ/$MQ$POM
#mvn clean install -Dmaven.test.skip=true

#CORE
cd $DEV_PATH/$PROXY/$PROXY$POM
#mvn clean install -Dmaven.test.skip=true

#CORE
cd $DEV_PATH/$DAO/$DAO$POM
#mvn clean install -Dmaven.test.skip=true


# BUILDING ICAA
echo # BUILDING ICAA

#ICAA
cd $DEV_PATH/$ICAA/$ICAA_CORE
mvn clean install -Dmaven.test.skip=true

# BUILDING BPI
echo # BUILDING BPI

#BPI
cd $DEV_PATH/$BPI/$BPI$PARENT
mvn clean install -Dmaven.test.skip=true