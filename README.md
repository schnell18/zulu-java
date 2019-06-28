# Introduction

This is a convenient docker image to package the well-known OpenJDK
build from [azul][1]. This project support zulu OpenJDK build for Java 8,
Java 11 and Java 12 on Alpine Linux, which is ideal for containerized
Java application. To save space, it offers JRE and JDK flavors separately.

## catalog

| name               | type          | OpenJDK version | comment   |
| ------------------ | ------------- | --------------- | --------- |
| zulu-alpine-jdk8   | jdk           | 8u212           |           |
| zulu-alpine-jdk11  | jdk           | 11.0.3          |           |
| zulu-alpine-jdk12  | jdk           | 12.0.1          |           |
| zulu-alpine-jre8   | jre           | 8u212           |           |
| zulu-alpine-jre11  | jre           | 11.0.3          |           |

## Run the container

The following command sequence is a typical example for your reference:

    docker run                           \
        -it                              \
        --rm                             \
        schnell18/zulu-alpine-jre11:1.0  \
        /bin/sh

## Build Docker image

If you wish to build the docker image from scratch, you may clone this
repository and choose appropriate sub directory containing Dockerfile
and run:

    docker build -t zulu-apline-jdk12:1.0 .

[1]: https://www.azul.com/
[2]: https://hub.docker.com/r/schnell18/zulu-jre/
