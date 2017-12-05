#!/bin/bash

export CURRENT_DIR=${PWD}

export SOURCES_BASE_PATH=$CURRENT_DIR

export SOURCES_BASE_PATH=D:\dev\IBK\bpi\bpi-back

#LEGACY
export CORE=digital-channels-core
export MQ=digital-channels-mq
export PROXY=digital-channels-proxy

export POM=-pom

#ICAA
export ICAA=interbank-common-application-architecture
export ICAA_CORE=icaa-core-parent

#BPI
export BPI=bpi-web-app

export PARENT=-parent

# BUILDING LEGACY
echo # BUILDING LEGACY

export SCRIPT_PATH=${PWD}
export SOURCES_BASE_PATH=D:\dev\IBK\bpi\bpi-back
export PROFILE=dev
export MAVEN_PARAMS=-o -DskipTests=true


export CONFIG_DIRECTORY_FROM=C:\warhol\sources\digital-channels\bpi-web-app\bpi-web-app-parent\src\conf
export CONFIG_DIRECTORY_TO=C:\apps\digital-channels\bpi\api\conf
export DEPENDENCIES_DIRECTORY_FROM=C:\warhol\sources\digital-channels\bpi-web-app\bpi-web-app-parent\bpi-web-app-rest\target\sharedLibraries
export DEPENDENCIES_DIRECTORY_TO=C:\warhol\soft\tomcat-bpi-x\lib