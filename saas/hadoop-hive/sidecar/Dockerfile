FROM openjdk:8-jdk-slim

LABEL maintainer="tjveil@gmail.com"

ENV TAKIPI_TMP_DIR=/tmp/takipi
ENV TAKIPI_AGENT_HOME=/opt/takipi

ENV TIMEZONE=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone

RUN apt-get update && apt-get install -y --no-install-recommends curl apt-utils && rm -rf /var/lib/apt/lists/*

RUN mkdir -pv $TAKIPI_TMP_DIR \
    && curl -fSL https://s3.amazonaws.com/app-takipi-com/deploy/linux/takipi-agent-latest.tar.gz -o /tmp/takipi-agent-latest.tar.gz \
    && tar -xvf /tmp/takipi-agent-latest.tar.gz -C $TAKIPI_TMP_DIR --strip-components=1 \
    && mv -v $TAKIPI_TMP_DIR /opt \
    && rm -rfv /tmp/takipi-agent-latest.tar.gz

ENTRYPOINT tail -f /dev/null