#!/bin/bash

trap '[ "$?" -eq 0 ] || read -p "Looks like something went wrong in step ´$STEP´... Press any key to continue..."' EXIT

. ./scripts/config.sh

cd $CURRENT_DIR
./scripts/build-all-.sh

cd $CURRENT_DIR
./scripts/build-docker.sh
