REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
spring              latest              0c0bd79b0133        54 seconds ago      595MB
spring_new          latest              6309017070ed        2 minutes ago       188MB



OLD 1.13:

FROM openjdk:8

WORKDIR /app
COPY spring-example-project .
RUN ./mvnw package
ENTRYPOINT java -jar ./target/docker-example-1.1.3.jar
EXPOSE 8080





NEW 1.13:

FROM alpine:3.8

COPY spring-example-project /app

RUN apk add --no-cache openjdk8 && \
    adduser -D spring && \
    chown -R spring:spring /app

USER spring
WORKDIR /app

EXPOSE 8080

RUN ./mvnw package
ENTRYPOINT java -jar ./target/docker-example-1.1.3.jar


I used alpine version, concatenated RUN commands and added a user. 
