# Dockerfile for training.

FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel

MAINTAINER W. Nicholas Greene "wng@csail.mit.edu"

# Install general software dependencies.
RUN apt-get update
RUN apt-get install -y apt-utils lsb-release
RUN apt-get install -y git openssh-client wget
RUN apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

WORKDIR /stereonet

# Install python requirements.
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy source.
COPY ./ ./