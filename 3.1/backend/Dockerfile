FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    npm install && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get purge -y --auto-remove curl

WORKDIR /app
COPY backend-example-docker /app

EXPOSE 8000
CMD ["npm","start"]


