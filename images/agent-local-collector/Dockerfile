FROM timveil/overops-base-centos

LABEL maintainer="tjveil@gmail.com"

ARG SECRET_KEY
ARG MACHINE_NAME=agent-local-collector

RUN curl -o overops-event-generator.jar -L https://s3.amazonaws.com/overops-event-generator/overops-event-generator-0.0.2-SNAPSHOT.jar

RUN curl -sSL http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=$SECRET_KEY --machine_name=$MACHINE_NAME

CMD java -agentlib:TakipiAgent -Dtakipi.debug.logconsole -jar overops-event-generator.jar