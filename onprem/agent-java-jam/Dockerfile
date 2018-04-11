FROM openjdk:8

ARG A_SECRET_KEY
ENV SECRET_KEY_ENV=$A_SECRET_KEY

#RUN apt-get update

RUN echo "Secret Key: $SECRET_KEY_ENV"

RUN mkdir -p /tmp/takipi-install

COPY wait-for-collector.sh /tmp/takipi-install

RUN chmod a+x /tmp/takipi-install/wait-for-collector.sh

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

ENTRYPOINT /tmp/takipi-install/wait-for-collector.sh $SECRET_KEY_ENV
