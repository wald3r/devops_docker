FROM alpine:3.8

COPY frontend-example-docker /app

RUN apk add --no-cache --update nodejs npm && \
    adduser -D frontend && \
    chown -R frontend:frontend /app 

USER frontend

WORKDIR /app
RUN npm install


EXPOSE 5000
CMD ["npm","start"]



