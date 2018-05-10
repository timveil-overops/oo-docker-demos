FROM centos:7

MAINTAINER Tim Veil <tjveil@gmail.com>

# netstat is used by instsaller. not required, but nice to have.
RUN yum install -y java-1.8.0-openjdk.x86_64 net-tools

# installs the overops sample event generator
RUN curl -o overops-event-generator.jar -L https://s3.amazonaws.com/overops-event-generator/overops-event-generator-0.0.1-SNAPSHOT.jar

# start the generator.  notice no flags are required at JVM statup.  this is all handled by environment variables.
CMD java -jar overops-event-generator.jar