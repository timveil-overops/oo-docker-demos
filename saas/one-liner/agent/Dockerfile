FROM centos:7

ARG A_SECRET_KEY

RUN yum update -y

# netstat is used by instsaller. not required, but nice to have.
RUN yum install -y java-1.8.0-openjdk.x86_64 net-tools

RUN echo "Secret Key: $A_SECRET_KEY"

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

RUN curl -sSL http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=$A_SECRET_KEY --daemon_host=collector --daemon_port=6060 --machine_name=saas-oneliner-agent

CMD java -agentlib:TakipiAgent -Dtakipi.name=JavaJam -Dtakipi.deployment.name=v1.0 -jar javajam.jar | tail -f /dev/null