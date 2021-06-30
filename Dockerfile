#FROM openjdk:11
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} springboottestproject-0.0.1.jar
#ENTRYPOINT ["java","-jar","/springboottestproject-0.0.1.jar"]
#EXPOSE 9002
FROM scratch
MAINTAINER Dipra Ghosh <ghosh.dipra@gmail.com>
COPY bin/springboottestproject /springboottestproject
EXPOSE 9002 8888
USER 1001
ENTRYPOINT ["/springboottestproject"]
