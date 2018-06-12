FROM timveil/overops-base-centos

LABEL maintainer="tjveil@gmail.com"

ARG SECRET_KEY
ARG MACHINE_NAME=agent-local-collector

RUN curl -sSL http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=$SECRET_KEY --machine_name=$MACHINE_NAME && rm -rf /opt/takipi/work/secret.key

ENTRYPOINT java -agentlib:TakipiAgent -Dtakipi.debug.logconsole -jar overops-event-generator.jar