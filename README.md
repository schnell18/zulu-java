# Introduction

This is a convenient docker image to package the well-known OpenJDK
build from [azul][1].

## Run the container

The following command sequence is a typical example for your reference:

    docker run                           \
        -it                              \
        --rm                             \
        schnell18/zulu-jre11:1.0         \
        /bin/sh

## Build Docker image

If you wish to build the docker image from scratch, you may clone this
repository and run the following command under the root directory of this
repository:

    ./build.sh

[1]: https://www.azul.com/
[2]: https://hub.docker.com/r/schnell18/zulu-jre/
