FROM openjdk:8

RUN apt-get update

ARG A_SECRET_KEY

ENV SECURET_KEY_ENV=$A_SECRET_KEY

RUN echo "Secret Key: $SECURET_KEY_ENV"

COPY wait-for-collector.sh .

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

ENTRYPOINT ./wait-for-collector.sh $SECURET_KEY_ENV
