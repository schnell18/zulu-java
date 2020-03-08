FROM alpine:3.10
MAINTAINER Justin Zhang "schnell18@gmail.com"

RUN apk add --no-cache ca-certificates && \
    update-ca-certificates && \
    apk add --no-cache --update curl bash tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

ARG ZULU_JDK="zulu11.37.17-ca-jdk11.0.6-linux_musl_x64"
ARG ZULU_DOWNLOAD_URL="https://cdn.azul.com/zulu/bin/${ZULU_JDK}.tar.gz"
RUN curl -L --silent ${ZULU_DOWNLOAD_URL} | tar -xzf - -C / && \
    mv /$ZULU_JDK /jdk

ENV PATH $PATH:/jdk/bin
