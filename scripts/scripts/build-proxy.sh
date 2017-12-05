#!/bin/bash

echo ############ PROXY ################
cd $SOURCES_BASE_PATH/$PROXY/$PROXY$POM
mvn clean install $MAVEN_PARAMS
