FROM openjdk:11
ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} springboottestproject-0.0.1.jar
ENTRYPOINT ["java","-jar","/springboottestproject-0.0.1.jar"]
EXPOSE 9002
