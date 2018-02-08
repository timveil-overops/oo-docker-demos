FROM openjdk:8

ARG A_SECRET_KEY

ENV SECURET_KEY_ENV=$A_SECRET_KEY

RUN echo "Secret Key: $SECURET_KEY_ENV"

COPY wait-for-collector.sh .

RUN curl -o scala-boom.jar -L https://s3.amazonaws.com/app-takipi-com/chen/scala-boom.jar

ENTRYPOINT ./wait-for-collector.sh $SECURET_KEY_ENV
