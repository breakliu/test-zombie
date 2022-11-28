FROM alpine:3.16

WORKDIR /

RUN apk update
RUN apk add --no-cache procps strace tini

COPY main /main
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["tini", "-s"]
CMD ["./main"]