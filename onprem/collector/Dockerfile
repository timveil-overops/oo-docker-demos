FROM openjdk:8

ARG A_SECRET_KEY
ENV TAKIPI_HOME /opt/takipi
ENV SECRET_KEY_ENV=$A_SECRET_KEY

RUN apt-get update

RUN echo "Takipi Home: $TAKIPI_HOME"
RUN echo "Secret Key: $SECRET_KEY_ENV"

COPY wait-for-analysis-server.sh .

ENTRYPOINT ./wait-for-analysis-server.sh $SECRET_KEY_ENV


