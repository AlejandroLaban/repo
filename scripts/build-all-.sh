#!/bin/bash

trap '[ "$?" -eq 0 ] || read -p "Looks like something went wrong in step ´$STEP´... Press any key to continue..."' EXIT

. ./scripts/config.sh

#CORE
#cd $CURRENT_DIR
#. ./scripts/build-core.sh

#MQ
#cd $CURRENT_DIR
#. ./scripts/build-mq.sh

#PROXY
#cd $CURRENT_DIR
#. ./scripts/build-proxy.sh

echo # BUILDING ICAA

#ICAA
#cd $CURRENT_DIR
#. ./scripts/build-icaa.sh

echo # BUILDING BPI

#BPI
#cd $CURRENT_DIR
#. ./scripts/build-bpi.sh

#CP SHARELIBS
#cd $CURRENT_DIR
#. ./scripts/cp-sharelibs.sh

#CP CONFIG ICAA
#cd $CURRENT_DIR
. ./scripts/cp-config-icaa.sh

#CP CONFIG ICAA
#cd $CURRENT_DIR
. ./scripts/cp-config-bpi.sh