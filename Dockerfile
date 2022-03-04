FROM docker.io/alpine:latest

RUN which crond && apk update && apk add bash curl openssl

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["crond", "-f", "-l", "2"]
