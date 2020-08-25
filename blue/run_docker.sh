#!/usr/bin/env bash

# Step 1 : Build docker image from Dockerfile and add a suitable tag
docker build --tag=shubhi19/testblueimage .

# Step 2 : List existing docker images
docker image ls

# Step 3: Run flask app
docker run -d -p 8000:80 shubhi19/testblueimage

