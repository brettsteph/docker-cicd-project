#!/bin/bash

# Fail on any error
set eu

# login to your docker hub account
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

# build the docker image (tage-name=folder-name/Dockerfile)
docker build -f ./$DOCKER_IMAGE_TAG/Dockerfile -t $DOCKER_IMAGE_TAG .
