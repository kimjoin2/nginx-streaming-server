FROM alpine:3

LABEL maintainer="bumnyeong kim <kimjoin2@gmail.com>"

RUN apk update && \
    apk add nginx && \
    apk add nginx-mod-rtmp && \
    apk add ffmpeg

RUN mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 1935
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
