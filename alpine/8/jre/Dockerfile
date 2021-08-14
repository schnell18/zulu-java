FROM alpine:3.14
MAINTAINER Justin Zhang "schnell18@gmail.com"

RUN apk add --no-cache ca-certificates && \
    update-ca-certificates && \
    apk add --no-cache --update curl bash tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

ARG ZULU_JRE="zulu8.54.0.21-ca-jre8.0.292-linux_musl_x64"
ARG ZULU_DOWNLOAD_URL="https://cdn.azul.com/zulu/bin/${ZULU_JRE}.tar.gz"
RUN curl -L --silent ${ZULU_DOWNLOAD_URL} | tar -xzf - -C / && \
    mv /$ZULU_JRE /jre

ENV PATH $PATH:/jre/bin
