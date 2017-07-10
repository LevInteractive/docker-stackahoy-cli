FROM node:latest

MAINTAINER support@stackahoy.io

RUN apt-get update && \
      apt-get install -y -qq npm curl && \
      npm i -g stackahoy
