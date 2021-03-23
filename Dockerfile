FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y git wget python pkg-config gcc-arm-linux-gnueabihf

COPY . /app
WORKDIR /app

ENV CONFIGURATION=Release
ENV TARGET_CPU=arm
ENV PDFium_V8=disabled
ENV PDFium_BRANCH=chromium/4446 

RUN bash build.sh