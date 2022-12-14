FROM amazoncorretto:18
EXPOSE 8400
ARG JAR_FILE=target/*.jar
COPY build/libs/api-service-template-0.0.1-SNAPSHOT.jar app.jar
COPY build/resources/main/application.yml application.yml
ENTRYPOINT ["java","-jar","/app.jar"]
