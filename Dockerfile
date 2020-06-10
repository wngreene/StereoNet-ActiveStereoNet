# Dockerfile for training.

FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel

MAINTAINER W. Nicholas Greene "wng@csail.mit.edu"

# Install general software dependencies.
RUN apt update
RUN apt install -y apt-utils lsb-release
RUN apt install -y git openssh-client wget
RUN apt install -y sudo && rm -rf /var/lib/apt/lists/*

WORKDIR /stereonet

# Stop gui stuff during installation of tzdata.
ENV DEBIAN_FRONTEND=noninteractive 

# More deps.
RUN apt update && apt install -y libgtk2.0-dev
RUN rm -rf /var/lib/apt/lists/*

# Install python requirements.
COPY ./requirements.txt .
RUN pip install -r requirements.txt