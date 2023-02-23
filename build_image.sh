#!/bin/bash

# Fail on any error
set eu

# build the docker image
docker build -f ./$DOCKER_HUB_REPO_NAME/Dockerfile -t $DOCKER_HUB_REPO_NAME:latest .
