FROM openjdk:8

ARG SECRET_KEY
ARG COLLECTOR_PORT

#RUN wget -O - -o /dev/null http://get.takipi.com | sudo bash /dev/stdin -i --sk=<INSTALLATION_KEY> --daemon_host=<REMOTE_COLLECTOR_HOST> --daemon_port=<REMOTE_COLLECTOR_PORT>

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

CMD wget -O - -o /dev/null "http://analysis-server:8080/app/download?t=inst" | bash /dev/stdin -i --sk=$SECRET_KEY --s3_url http://analysis-server:8080/service/png --installer_url "http://analysis-server:8080/app/download?t=tgz" --base_url http://analysis-server:8080 --daemon_host=collector --daemon_port=$COLLECTOR_PORT

ENTRYPOINT java -agentlib:TakipiAgent -jar javajam.jar
