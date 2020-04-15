FROM ubuntu:16.04


COPY backend-example-docker /app

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    npm install && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get purge -y --auto-remove curl && \
    useradd -m backend 


RUN chown -R backend:backend /app


USER backend
WORKDIR /app
RUN npm install

EXPOSE 8000
CMD ["npm","start"]


