FROM alpine:3.6
MAINTAINER Justin Zhang "schnell18@gmail.com"

RUN cp /etc/apk/repositories /etc/apk/repositories.bak && \
    echo "http://mirrors.ustc.edu.cn/alpine/v3.6/main/" > /etc/apk/repositories && \
    echo "http://mirrors.ustc.edu.cn/alpine/v3.6/community/" >> /etc/apk/repositories && \
    apk add --no-cache ca-certificates && \
    update-ca-certificates && \
    apk add --no-cache --update curl bash tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

ARG ZULU_JRE="zulu11.31.11-ca-jre11.0.3-linux_musl_x64"
ARG ZULU_DOWNLOAD_URL="https://cdn.azul.com/zulu/bin/${ZULU_JRE}.tar.gz"
#RUN curl -L --silent ${ZULU_DOWNLOAD_URL} | tar -xzf - -C / && \
#    mv /$ZULU_JRE /jre

RUN curl -L --silent ${ZULU_DOWNLOAD_URL} > /tmp/zulu.tgz && \
    tar -xzf /tmp/zulu.tgz -C / && \
    mv /$ZULU_JRE /jre && \
    rm -fr /tmp/zulu.tgz

ENV PATH $PATH:/jre/bin

