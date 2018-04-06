
FROM openjdk:8

RUN curl -Ls /dev/null http://get.takipi.com/takipi-installer | bash /dev/stdin -i --sk=S34749#PtqgO3AQi2NNOEZD#2hpk07nOVmYBTSuIDkjy9MBY4PGCboVkttTZWx/wHJ8=#773c

RUN curl -o javajam.jar -L https://s3-us-west-1.amazonaws.com/overops/javajam.jar

CMD java -agentlib:TakipiAgent -jar javajam.jar