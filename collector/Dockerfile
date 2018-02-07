FROM openjdk:8

ENV TAKIPI_HOME /opt/takipi

ARG A_SECRET_KEY
ARG A_COLLECTOR_PORT

ENV SECURET_KEY_ENV=$A_SECRET_KEY
ENV COLLECTOR_PORT_ENV=$A_COLLECTOR_PORT

RUN echo "Takipi Home: $TAKIPI_HOME"
RUN echo "Secret Key: $SECURET_KEY_ENV"
RUN echo "Collector Port: $COLLECTOR_PORT_ENV"

# secret key for on-prem trial is always the same and user is admin@takipi.com / 123456
# trial sk is always S1#qrXOZTWZsAzN2X0x#02G06kYSRWvet5HQJcq+LVAALN/a8Vu4QqKGIr/d+Ho=#84ae
ADD . /startup
WORKDIR /startup

CMD ./wait-for-analysis-server.sh $SECURET_KEY_ENV $COLLECTOR_PORT_ENV


