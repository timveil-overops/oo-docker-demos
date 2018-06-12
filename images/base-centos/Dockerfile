FROM centos:7

LABEL maintainer="tjveil@gmail.com"

RUN yum install -y java-1.8.0-openjdk-devel.x86_64 net-tools

RUN curl -o overops-event-generator.jar -L https://s3.amazonaws.com/overops-event-generator/overops-event-generator-0.0.2-SNAPSHOT.jar

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk

ENV PATH $JAVA_HOME/bin:$PATH