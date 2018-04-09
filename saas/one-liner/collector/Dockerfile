FROM centos:7

ARG A_SECRET_KEY

RUN yum update -y

# netstat is used by instsaller. not required, but nice to have.
RUN yum install -y java-1.8.0-openjdk.x86_64 net-tools

RUN echo "Secret Key: $A_SECRET_KEY"

RUN curl -sSL http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=$A_SECRET_KEY --listen_on_port=6060 --machine_name=saas-oneliner-collector

CMD /opt/takipi/bin/takipi-service -nfd | tail --retry -f -n +1 /opt/takipi/log/bugtale_service.log