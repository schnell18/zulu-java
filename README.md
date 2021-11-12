# Introduction

This project builds multi-architecture(amd64 and arm64) docker images to
package the well-known OpenJDK build from [azul][1]. This project support zulu
OpenJDK build for Java 8, Java 11, Java 12, Java 17 on Alpine Linux, which is
ideal for containerized Java application.  To save space, it offers JRE and JDK
flavors separately.

## catalog

| name               | type          | OpenJDK version | comment   |
| ------------------ | ------------- | --------------- | --------- |
| zulu-alpine-jdk8   | jdk           | 8u212           |           |
| zulu-alpine-jdk11  | jdk           | 11.0.3          |           |
| zulu-alpine-jdk12  | jdk           | 12.0.1          |           |
| zulu-alpine-jre8   | jre           | 8u212           |           |
| zulu-alpine-jre11  | jre           | 11.0.3          |           |
| zulu-java          | jre           | 17.0.1          |           |
| zulu-java          | jdk           | 17.0.1          |           |

## Run the container

The following command sequence is a typical example for your reference:

    docker run                                  \
        -it                                     \
        --rm                                    \
        schnell18/zulu-java:alpine-jre17:0.1.0  \
        /bin/sh

## Build Docker image

If you wish to build the docker image from scratch, you may clone this
repository and choose appropriate sub directory containing Dockerfile
and run:

    cd alpine/17
    sh build.sh

[1]: https://www.azul.com/
[2]: https://hub.docker.com/r/schnell18/zulu-jre/
