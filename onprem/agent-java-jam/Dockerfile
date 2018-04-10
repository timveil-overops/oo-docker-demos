FROM openjdk:8

ARG A_SECRET_KEY
ENV SECRET_KEY_ENV=$A_SECRET_KEY

#RUN apt-get update

RUN echo "Secret Key: $SECRET_KEY_ENV"

COPY wait-for-collector.sh .

RUN chmod a+x wait-for-collector.sh

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

ENTRYPOINT ./wait-for-collector.sh $SECRET_KEY_ENV
