FROM openjdk:8

ARG A_SECRET_KEY
ENV SECRET_KEY_ENV=$A_SECRET_KEY
ENV FILEBEAT_VERSION 6.2.2

#RUN apt-get update

RUN echo "Secret Key: $SECRET_KEY_ENV"

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-amd64.deb \
 && dpkg -i filebeat-${FILEBEAT_VERSION}-amd64.deb \
 && rm filebeat-${FILEBEAT_VERSION}-amd64.deb

ADD filebeat.yml /etc/filebeat/filebeat.yml
RUN chmod 644 /etc/filebeat/filebeat.yml

RUN mkdir -p /tmp/takipi-install
ADD wait-for-collector.sh /tmp/takipi-install
RUN chmod a+x /tmp/takipi-install/wait-for-collector.sh

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

ENTRYPOINT /tmp/takipi-install/wait-for-collector.sh $SECRET_KEY_ENV
