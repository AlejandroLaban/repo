#!/bin/bash

echo ############ CP DOCKER ################
mkdir -p $DOCKER_PATH/image/files
cp -R $OUTPUT_DIRECTORY $DOCKER_PATH/image/files

cd $DOCKER_PATH/image
. ./build.sh