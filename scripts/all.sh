#!/bin/bash

. ./scripts/config.sh

cd $CURRENT_DIR
. ./build-all-.sh

cd $CURRENT_DIR
. ./cp-all.sh