FROM openjdk:8

#RUN apt-get update

RUN wget https://s3.amazonaws.com/app-takipi-com/deploy/takipi-server/takipi-server-java.tar.gz

RUN tar xvf takipi-server-java.tar.gz

ENTRYPOINT ./takipi-server/bin/takipi-server.sh -u analysis-server --db-url jdbc:mysql://db:3306 --db-user root --db-password overops -v start | tail --retry -f -n +1 /takipi-server/log/tomcat/tomcat/catalina.log
