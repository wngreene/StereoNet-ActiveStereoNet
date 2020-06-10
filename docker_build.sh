#!/usr/bin/env bash

DOCKER_FILE=${1-Dockerfile}

IMAGE=stereonet
TAG=latest

# Builds a docker image.
docker build --rm -t ${IMAGE}:${TAG} -f ${DOCKER_FILE} .
