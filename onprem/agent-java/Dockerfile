FROM openjdk:8

MAINTAINER Tim Veil <tjveil@gmail.com>

ARG A_SECRET_KEY
ENV SECRET_KEY_ENV=$A_SECRET_KEY

RUN echo "Secret Key: $SECRET_KEY_ENV"

RUN mkdir -p /tmp/takipi-install

ADD startup.sh /tmp/takipi-install

RUN sed -i 's/\r$//' /tmp/takipi-install/startup.sh && chmod a+x /tmp/takipi-install/startup.sh

RUN curl -o /tmp/takipi-install/overops-event-generator.jar -L https://s3.amazonaws.com/overops-event-generator/overops-event-generator-0.0.1-SNAPSHOT.jar

WORKDIR /tmp/takipi-install

ENTRYPOINT /tmp/takipi-install/startup.sh $SECRET_KEY_ENV