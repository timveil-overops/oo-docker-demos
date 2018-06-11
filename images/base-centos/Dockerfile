FROM centos:7

LABEL maintainer="tjveil@gmail.com"

RUN yum install -y java-1.8.0-openjdk.x86_64 net-tools

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk.x86_64

ENV PATH $JAVA_HOME/bin:$PATH