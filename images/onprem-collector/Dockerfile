FROM timveil/overops-base-centos

LABEL maintainer="tjveil@gmail.com"

ARG SECRET_KEY
ARG COLLECTOR_PORT=6060
ARG MACHINE_NAME=collector

RUN curl -sSL http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=$SECRET_KEY --listen_on_port=$COLLECTOR_PORT --machine_name=$MACHINE_NAME && rm -rf /opt/takipi/work/secret.key && sed -i -e '/^baseUrl/d' /opt/takipi/takipi.properties

ENTRYPOINT /opt/takipi/bin/takipi-service -nfd -l