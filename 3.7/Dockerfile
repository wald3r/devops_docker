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



