FROM openjdk:8

ARG A_SECRET_KEY
ENV SECRET_KEY_ENV=$A_SECRET_KEY

#RUN apt-get update

RUN echo "Secret Key: $SECRET_KEY_ENV"

COPY wait-for-collector.sh .

RUN chmod a+x wait-for-collector.sh

RUN curl -o scala-boom.jar -L https://s3.amazonaws.com/app-takipi-com/chen/scala-boom.jar

ENTRYPOINT ./wait-for-collector.sh $SECRET_KEY_ENV
