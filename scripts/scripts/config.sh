#!/bin/bash

export JAVA_HOME=/d/Tools/Java/jdk1.8.0_121
export MAVEN_HOME=/d/Tools/apache-maven-3.3.9
export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

export CURRENT_DIR=${PWD}
export SCRIPT_PATH=${PWD}

export SOURCES_BASE_PATH=$CURRENT_DIR

export SOURCES_BASE_PATH=/D/dev/IBK/bpi/bpi-back

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
export REST=-rest


export PROFILE=dev
export MAVEN_PARAMS="-o -DskipTests=true -P${PROFILE}"

export DEPENDENCIES_DIRECTORY_FROM=$SOURCES_BASE_PATH/$BPI/$BPI$PARENT/$BPI$REST/target/sharedLibraries/*.jar
export DEPENDENCIES_DIRECTORY_TO=/D/dev/IBK/sharedlibs

export CONFIG_BPI_DIRECTORY_FROM=$SOURCES_BASE_PATH/$BPI/$BPI$PARENT/src/conf
export CONFIG_BPI_DIRECTORY_TO=/C/apps/digital-channels/bpi/api

export CONFIG_ICAA_DIRECTORY_FROM=$SOURCES_BASE_PATH/$ICAA/$ICAA_CORE/src/conf
export CONFIG_ICAA_DIRECTORY_TO=/C/apps/digital-channels/icaa/api

