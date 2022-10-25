FROM ubuntu:latest AS base
WORKDIR /hello-flutter
ENV PATH "/hello-flutter/flutter/bin:$PATH"
RUN apt update
RUN apt install -y git
RUN apt install -y curl
RUN apt install -y unzip

FROM base AS dev
WORKDIR /hello-flutter