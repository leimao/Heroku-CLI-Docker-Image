FROM ubuntu:20.04

ARG GIT_USER_EMAIL="dukeleimao@gmail.com"
ARG GIT_USER_NAME="Lei Mao"

ENV DEBIAN_FRONTEND noninteractive

# Install package dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        software-properties-common \
        autoconf \
        automake \
        libtool \
        pkg-config \
        ca-certificates \
        wget \
        git \
        curl \
        language-pack-en \
        locales \
        locales-all && \
    apt-get clean

RUN cd /tmp && \
    curl https://cli-assets.heroku.com/install.sh | sh

RUN git config --global user.email ${GIT_USER_EMAIL} && \
    git config --global user.name ${GIT_USER_NAME}
