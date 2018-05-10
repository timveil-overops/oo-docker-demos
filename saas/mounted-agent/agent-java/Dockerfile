FROM centos:7

MAINTAINER Tim Veil <tjveil@gmail.com>

# netstat is used by instsaller. not required, but nice to have.
RUN yum install -y java-1.8.0-openjdk.x86_64 net-tools

RUN curl -o overops-event-generator.jar -L https://s3.amazonaws.com/overops-event-generator/overops-event-generator-0.0.1-SNAPSHOT.jar

CMD java -jar overops-event-generator.jar