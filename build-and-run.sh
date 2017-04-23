#!/bin/bash

cd kevin_base
sudo ./build.sh
cd -
docker-compose up --build

