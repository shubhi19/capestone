#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub, assuming that an image has been built via `run_docker.sh`

# Step 1 : Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=shubhi19/testblueimage

# Step 2 :  Authenticate & tag
docker login --username shubhi19
docker tag testblueimage shubhi19/testblueimage

# Step 3 : Push image to a docker repository
docker push shubhi19/testblueimage


