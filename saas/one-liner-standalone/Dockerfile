FROM centos:7

ENV SECRET_KEY <YOUR_SECRET_KEY>

# netstat is used by instsaller. not required, but nice to have.
RUN yum install -y java-1.8.0-openjdk.x86_64 net-tools

RUN curl -Ls /dev/null http://get.takipi.com/takipi-t4c-installer | bash /dev/stdin -i --sk=${SECRET_KEY} --machine_name=saas-oneliner-standalone

RUN /opt/takipi/etc/takipi-setup-machine-name saas-oneliner

RUN curl -o overops-event-generator.jar -L https://s3.amazonaws.com/overops-event-generator/overops-event-generator-0.0.1-SNAPSHOT.jar

CMD java -agentlib:TakipiAgent -Dtakipi.name=saas-oneliner -Dtakipi.deployment.name=v1.0 -Dtakipi.debug.logconsole -jar overops-event-generator.jar