#!/bin/bash

# Fail on any error
set eu

# build the docker image
docker build -f ./$DOCKER_IMAGE_TAG/Dockerfile -t $DOCKER_IMAGE_TAG .
