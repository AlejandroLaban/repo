#!/bin/bash

trap '[ "$?" -eq 0 ] || read -p "Looks like something went wrong in step ´$STEP´... Press any key to continue..."' EXIT

#CONFIG
. ./scripts/config.sh


echo # BUILDING ICAA

#ICAA
cd $CURRENT_DIR
. ./scripts/build-icaa.sh

echo # BUILDING BPI

#BPI
cd $CURRENT_DIR
. ./scripts/build-bpi.sh