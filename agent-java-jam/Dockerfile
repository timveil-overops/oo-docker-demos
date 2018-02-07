FROM openjdk:8

ARG A_SECRET_KEY

ENV SECURET_KEY_ENV=$A_SECRET_KEY

RUN echo "Secret Key: $SECURET_KEY_ENV"

ADD . /startup
WORKDIR /startup

CMD ./wait-for-collector.sh $SECURET_KEY_ENV
