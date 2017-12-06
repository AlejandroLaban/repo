#!/bin/bash

#CP SHARELIBS
cd $CURRENT_DIR
. ./scripts/cp-sharelibs.sh

#CP CONFIG ICAA
cd $CURRENT_DIR
. ./scripts/cp-config-icaa.sh

#CP CONFIG ICAA
cd $CURRENT_DIR
. ./scripts/cp-config-bpi.sh

#CP BPI WAR
cd $CURRENT_DIR
. ./scripts/cp-bpi-war.sh

#CP CONFIG ROOT
cd $CURRENT_DIR
. ./scripts/cp-config-root.sh