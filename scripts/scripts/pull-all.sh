#!/bin/bash

echo ############ CORE ################
cd $SOURCES_BASE_PATH/$CORE/$CORE$POM
#git pull

echo ############ MQ ################
cd $SOURCES_BASE_PATH/$MQ/$MQ$POM
#git pull

echo ############ PROXY ################
cd $SOURCES_BASE_PATH/$PROXY/$PROXY$POM
#git pull

echo ############ ICAA ################
cd $SOURCES_BASE_PATH/$ICAA/$ICAA_CORE
git pull

echo ############ BPI ################
cd $SOURCES_BASE_PATH/$BPI/$BPI$PARENT
git pull

