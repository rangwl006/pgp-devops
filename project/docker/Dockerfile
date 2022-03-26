FROM ubuntu:20.04

# update the container to latest
RUN apt update
# install build-essentail
RUN apt install -y build-essential
# install curl
RUN apt install -y curl
# install cmake
ARG DEBIAN_FRONTEND=noninteractive
RUN apt install -y cmake
