
# 2021/0712 komizo()
# For development base image in ubuntu

# usage
# step1. docker build -t `image name` .
# step2. docker run --rm -it `image name` /bin/bash


# FROM ubuntu:20.04
FROM python:3
USER root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y curl gnupg2 lsb-release git build-essential python

RUN apt-get install -y vim