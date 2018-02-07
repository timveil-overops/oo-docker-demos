FROM openjdk:8

RUN wget http://sam.sparktale.s3.amazonaws.com/samv2/snapshots/sharkjaqen/stage1.0.24/takipi-onprem-jaqen-stage1.0.24.tar.gz

RUN tar xvf takipi-onprem-jaqen-stage1.0.24.tar.gz

CMD ./takipi-server/bin/takipi-server.sh -u analysis-server -v start | tail -f /dev/null
