FROM centos:7

MAINTAINER Tim Veil <tjveil@gmail.com>

ARG A_SECRET_KEY

# netstat is used by installer. not required, but nice to have.
RUN yum install -y java-1.8.0-openjdk.x86_64 net-tools

RUN echo "Secret Key: $A_SECRET_KEY"

RUN curl -o overops-event-generator.jar -L https://s3-us-west-1.amazonaws.com/overops/overops-event-generator-1.0.0.jar

RUN curl -sSL http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=$A_SECRET_KEY --daemon_host=collector --daemon_port=6060 --machine_name=hybrid-agent

CMD java -agentlib:TakipiAgent -Dtakipi.debug.logconsole -jar overops-event-generator.jar