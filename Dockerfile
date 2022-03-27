FROM --platform=amd64 openjdk:8u312-jdk-slim

LABEL maintainer="Infinite Canvas"

ARG RenPyVerArg="7.4.11"
ARG RenKitVerArg="1.2.1"

ENV RENPY_DIR="/renpy"
ENV RENKIT_DIR="/usr/local/bin"
ENV RENKIT_VERSION=${RenKitVerArg:-"1.2.1"}
ENV RENPY_VERSION=${RenPyVerArg:-"7.4.11"}

RUN apt-get -y update \
    && apt-get -qqy --no-install-recommends install \
		libglu1 \
    unzip \
    wget \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget -O renkit.zip https://github.com/kobaltcore/renkit/releases/download/v$RENKIT_VERSION/renkit-linux-amd64.zip
RUN unzip renkit.zip -d $RENKIT_DIR && rm renkit.zip
RUN $RENKIT_DIR/renutil install -r $RENPY_DIR -v $RENPY_VERSION