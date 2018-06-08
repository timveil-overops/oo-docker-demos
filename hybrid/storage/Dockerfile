FROM centos:7

MAINTAINER Tim Veil <tjveil@gmail.com>

# netstat is used by installer. not required, but nice to have.
RUN yum install -y wget java-1.8.0-openjdk.x86_64 net-tools

RUN wget http://app-takipi-com.s3.amazonaws.com/deploy/takipi-storage/takipi-storage-latest.tar.gz

RUN tar zxvf takipi-storage-latest.tar.gz -C /opt

CMD java -jar /opt/takipi-storage/lib/takipi-storage.jar server /opt/takipi-storage/settings.yml