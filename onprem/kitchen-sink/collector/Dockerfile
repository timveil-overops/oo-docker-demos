FROM openjdk:8

MAINTAINER Tim Veil <tjveil@gmail.com>

ARG A_SECRET_KEY
ENV TAKIPI_HOME /opt/takipi
ENV SECRET_KEY_ENV=$A_SECRET_KEY

RUN echo "Takipi Home: $TAKIPI_HOME"
RUN echo "Secret Key: $SECRET_KEY_ENV"

RUN mkdir -p /tmp/takipi-install

ADD startup.sh /tmp/takipi-install

RUN sed -i 's/\r$//' /tmp/takipi-install/startup.sh && chmod a+x /tmp/takipi-install/startup.sh

WORKDIR /tmp/takipi-install

ENTRYPOINT /tmp/takipi-install/startup.sh $SECRET_KEY_ENV