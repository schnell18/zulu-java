FROM alpine:3.14
MAINTAINER Justin Zhang "schnell18@gmail.com"

RUN apk add --no-cache --update curl bash tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    ARCH= && apkArch="$(apk --print-arch)" \
  && case "${apkArch##*-}" in \
    amd64) ARCH='x64';; \
    x86_64) ARCH='x64';; \
    arm64) ARCH='aarch64';; \
    aarch64) ARCH='aarch64';; \
    *) echo "unsupported architecture"; exit 1 ;; \
  esac ;\
  ZULU_JRE="zulu17.30.15-ca-jre17.0.1-linux_musl_${ARCH}"; \
  ZULU_DOWNLOAD_URL="https://cdn.azul.com/zulu/bin/${ZULU_JRE}.tar.gz" ; \
  curl -L --silent ${ZULU_DOWNLOAD_URL} | tar -xzf - -C / && mv /$ZULU_JRE /jre; \
  apk del tzdata

ENV PATH $PATH:/jre/bin
ENV JAVA_HOME /jre
