FROM openjdk:11-slim as build

EXPOSE 8071

# JAR файл прилжения
ARG JAR_FILE

CMD mkdir /opt/app
COPY target/*.jar /opt/app/configServer.jar

ENTRYPOINT ["java","-jar","/opt/app/configServer.jar"]