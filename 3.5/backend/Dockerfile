FROM alpine:3.8


COPY backend-example-docker /app


RUN apk add --no-cache --update nodejs npm && \
    adduser -D backend && \ 
    chown -R backend:backend /app

USER backend

WORKDIR /app
RUN npm install


EXPOSE 8000
CMD ["npm","start"]


