FROM timveil/overops-base-centos

LABEL maintainer="tjveil@gmail.com"

ARG SECRET_KEY
ARG COLLECTOR_HOST
ARG COLLECTOR_PORT=6060
ARG MACHINE_NAME=agent

RUN curl -sSL http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=$SECRET_KEY --daemon_host=$COLLECTOR_HOST --daemon_port=$COLLECTOR_PORT --machine_name=$MACHINE_NAME && rm -rf /opt/takipi/work/secret.key && sed -i -e '/^masterHost/d' /opt/takipi/takipi.properties

ENTRYPOINT java -agentlib:TakipiAgent -Dtakipi.debug.logconsole -jar overops-event-generator.jar