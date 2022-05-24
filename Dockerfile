FROM --platform=amd64 openjdk:8u312-jdk-slim

LABEL maintainer="Infinite Canvas"

ARG RENPY_VERSION="7.4.11"
ARG RENKIT_VERSION="1.2.3"
ARG MEGATOOLS_VERSION="megatools-1.11.0.20220519-linux-x86_64"

ENV RENKIT_VERSION=${RENKIT_VERSION:-"1.2.3"}
ENV RENPY_VERSION=${RENPY_VERSION:-"7.4.11"}

RUN apt-get -y update \
    && apt-get -qqy --no-install-recommends install \
    libglu1 \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
RUN wget -O renkit.zip https://github.com/kobaltcore/renkit/releases/download/v$RENKIT_VERSION/renkit-linux-amd64.zip
RUN unzip renkit.zip -d "/usr/local/bin" && rm renkit.zip
RUN renutil install -v $RENPY_VERSION
RUN wget -O megatools.tar.gz https://megatools.megous.com/builds/builds/$MEGATOOLS_VERSION.tar.gz
RUN tar -xf megatools.tar.gz 
RUN mv $MEGATOOLS_VERSION/megatools /usr/local/bin
RUN wget -O /usr/local/bin/go-pd https://github.com/ManuelReschke/go-pd/raw/main/bin/linux/go-pd
RUN chmod +x /usr/local/bin/go-pd
