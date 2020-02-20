FROM node

WORKDIR /app
COPY backend-example-docker/. /app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install
ENTRYPOINT npm start
EXPOSE 8000






