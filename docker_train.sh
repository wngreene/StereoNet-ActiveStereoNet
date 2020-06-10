#!/usr/bin/env bash

DOCKER run --runtime=nvidia --rm -it \
       -v /home/wngreene_google/Projects/StereoNet-ActiveStereoNet:/stereonet \
       -v /home/wngreene_google/Projects/data:/data \
       stereonet \
       /bin/bash -c "/stereonet/train.sh"
