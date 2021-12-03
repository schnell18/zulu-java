docker manifest create schnell18/zulu-java:alpine-jre17-0.1.1 \
    --amend schnell18/zulu-java:alpine-jre17-arm64-0.1.1 \
    --amend schnell18/zulu-java:alpine-jre17-amd64-0.1.1

docker manifest push schnell18/zulu-java:alpine-jre17-0.1.1

docker manifest create schnell18/zulu-java:alpine-jdk17-0.1.1 \
    --amend schnell18/zulu-java:alpine-jdk17-arm64-0.1.1 \
    --amend schnell18/zulu-java:alpine-jdk17-amd64-0.1.1

docker manifest push schnell18/zulu-java:alpine-jdk17-0.1.1
