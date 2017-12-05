#!/bin/bash

trap '[ "$?" -eq 0 ] || read -p "Looks like something went wrong in step ´$STEP´... Press any key to continue..."' EXIT

echo # BUILDING ICAA

#ICAA
./scripts/build-icaa.sh

echo # BUILDING BPI

#BPI
./scripts/build-bpi.sh