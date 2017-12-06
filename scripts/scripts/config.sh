#!/bin/bash

export JAVA_HOME=/d/TCS/Tools/jdk1.8.0_144
export MAVEN_HOME=/d/TCS/Tools/apache-maven-3.5.0
export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

export CURRENT_DIR=${PWD}
export SCRIPT_PATH=${PWD}

export SOURCES_BASE_PATH=$CURRENT_DIR

export SOURCES_BASE_PATH=/d/bpi2

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


export PROFILE=sit
export MAVEN_PARAMS="-DskipTests=true -P${PROFILE}"

export OUTPUT_DIRECTORY=/D/TCS/bpi2/output

export DEPENDENCIES_DIRECTORY_FROM=$SOURCES_BASE_PATH/$BPI/$BPI$PARENT/target/dist/lib/*.jar
export DEPENDENCIES_DIRECTORY_TO=$OUTPUT_DIRECTORY/libs

export CONFIG_BPI_DIRECTORY_FROM=$SOURCES_BASE_PATH/$BPI/$BPI$PARENT/src/conf
export CONFIG_BPI_DIRECTORY_TO=$OUTPUT_DIRECTORY/config/apps/digital-channels/bpi-x/api

export CONFIG_ICAA_DIRECTORY_FROM=$SOURCES_BASE_PATH/$ICAA/$ICAA_CORE/src/conf
export CONFIG_ICAA_DIRECTORY_TO=$OUTPUT_DIRECTORY/config/apps/digital-channels/icaa/api

export WAR_FROM=$SOURCES_BASE_PATH/$BPI/$BPI$PARENT/target/dist/bpi-api-1.0.0.war
export WAR_TO=$OUTPUT_DIRECTORY/war

export DOCKER_PATH=$SCRIPT_PATH/docker
export ROOT=/c/

