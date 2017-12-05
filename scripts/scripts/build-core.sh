#!/bin/bash

echo ############ CORE ################
cd $SOURCES_BASE_PATH/$CORE/$CORE$POM
mvn clean install $MAVEN_PARAMS