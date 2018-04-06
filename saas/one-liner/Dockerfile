
FROM openjdk:8

RUN apt-get update

RUN apt-get install -y net-tools

RUN mkdir -p /etc/init

RUN touch /etc/init/takipi.conf

RUN curl -Ls /dev/null http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=<YOUR_SECRET_KEY>

RUN /opt/takipi/etc/takipi-setup-machine-name saas-oneliner

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

CMD java -agentlib:TakipiAgent -Dtakipi.name=saas-oneliner -Dtakipi.deployment.name=v1.0 -jar javajam.jar | tail --retry -f -n +1 /opt/takipi/log/bugtale_service.log