FROM alpine:3.7

EXPOSE 80 443 2015

RUN apk add --no-cache ca-certificates curl

COPY ./caddy /bin/

ENTRYPOINT ["/bin/caddy"]
