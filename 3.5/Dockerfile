FROM alpine:3.8 as dist

COPY frontend-example-docker /app
WORKDIR /app

RUN apk add --no-cache --update nodejs npm && \
    npm install && \
    npm build

FROM nginx
COPY --from=dist /app/dist/ /usr/share/nginx/html




