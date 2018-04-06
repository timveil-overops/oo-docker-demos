FROM openjdk:8

RUN apt-get update

ENV TAKIPI_HOME /opt/takipi

ARG A_SECRET_KEY

ENV SECURET_KEY_ENV=$A_SECRET_KEY

RUN echo "Takipi Home: $TAKIPI_HOME"
RUN echo "Secret Key: $SECURET_KEY_ENV"

COPY wait-for-analysis-server.sh .

ENTRYPOINT ./wait-for-analysis-server.sh $SECURET_KEY_ENV


