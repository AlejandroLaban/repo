#!/bin/bash

docker build --tag wlp_bpi:latest .

docker-compose -f docker-compose-single.yml up