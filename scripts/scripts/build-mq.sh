#!/bin/bash

echo ############ MQ ################
cd $SOURCES_BASE_PATH/$MQ/$MQ$POM
mvn clean install %MAVEN_PARAMS%