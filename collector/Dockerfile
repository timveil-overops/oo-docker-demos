FROM openjdk:8

ENV TAKIPI_HOME /opt/takipi

#RUN yum install -y java-1.8.0-openjdk-devel wget net-tools

RUN wget -O - -o /dev/null http://get.takipi.com | bash /dev/stdin -i --sk=S35018#+Wm8ztPJLPOGFquu#rtosllqYdrj5TdrcsTd2yw/KezHSSMW241Z13h7v3SM=#37a8 --listen_on_port=6060 --machine_name=collector

CMD /opt/takipi/bin/takipi-service -nfd -l
