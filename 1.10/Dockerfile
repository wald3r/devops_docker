from node

WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install
RUN npm install -g serve
COPY frontend-example-docker .
EXPOSE 5000
ENTRYPOINT serve -s -l 5000 dist


