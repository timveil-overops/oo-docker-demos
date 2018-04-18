FROM openjdk:8

ARG A_SECRET_KEY
ENV SECRET_KEY_ENV=$A_SECRET_KEY

#RUN apt-get update

RUN echo "Secret Key: $SECRET_KEY_ENV"

RUN mkdir -p /tmp/takipi-install

ADD startup.sh /tmp/takipi-install

RUN sed -i 's/\r$//' /tmp/takipi-install/startup.sh && chmod a+x /tmp/takipi-install/startup.sh

RUN curl -o /tmp/takipi-install/javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

WORKDIR /tmp/takipi-install

ENTRYPOINT /tmp/takipi-install/startup.sh $SECRET_KEY_ENV