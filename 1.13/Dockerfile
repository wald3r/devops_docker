FROM openjdk:8-jdk-alpine

WORKDIR /app
COPY spring-example-project .
RUN ./mvnw package
ENTRYPOINT java -jar ./target/docker-example-1.1.3.jar
EXPOSE 8080


