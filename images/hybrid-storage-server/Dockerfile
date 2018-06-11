FROM timveil/overops-base-centos

LABEL maintainer="tjveil@gmail.com"

RUN curl -o takipi-storage-latest.tar.gz -L http://app-takipi-com.s3.amazonaws.com/deploy/takipi-storage/takipi-storage-latest.tar.gz

RUN tar zxvf takipi-storage-latest.tar.gz -C /opt

CMD java -jar /opt/takipi-storage/lib/takipi-storage.jar server /opt/takipi-storage/settings.yml