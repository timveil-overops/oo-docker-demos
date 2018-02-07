FROM openjdk:8

ENV TAKIPI_HOME /opt/takipi

ARG A_SECRET_KEY

ENV SECURET_KEY_ENV=$A_SECRET_KEY

RUN echo "Takipi Home: $TAKIPI_HOME"
RUN echo "Secret Key: $SECURET_KEY_ENV"

# secret key for on-prem trial is always the same and user is admin@takipi.com / 123456
# trial sk is always S1#qrXOZTWZsAzN2X0x#02G06kYSRWvet5HQJcq+LVAALN/a8Vu4QqKGIr/d+Ho=#84ae
ADD . /startup
WORKDIR /startup

ENTRYPOINT ./wait-for-analysis-server.sh $SECURET_KEY_ENV


