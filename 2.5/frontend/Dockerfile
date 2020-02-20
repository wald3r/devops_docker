from node

WORKDIR /app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install
RUN npm install -g serve
COPY frontend-example-docker .
ENV API_URL=http://localhost:8000
EXPOSE 5000
CMD ["npm","start"]



