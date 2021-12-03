ARCH=""
dockerArch=$(docker info | grep Architecture | cut -d' ' -f3 | sed -e 's/\s+//g')
echo "'$dockerArch'"
case "${dockerArch}" in
    amd64)   ARCH='amd64';;
    x86_64)  ARCH='amd64';;
    arm64)   ARCH='arm64';;
    aarch64) ARCH='arm64';;
    *) echo "unsupported architecture: $dockerArch"; exit 1 ;;
esac

cd jre
docker build -t schnell18/zulu-java:alpine-jre17-${ARCH}-0.1.1 .
docker push schnell18/zulu-java:alpine-jre17-${ARCH}-0.1.1
cd ..
cd jdk
docker build -t schnell18/zulu-java:alpine-jdk17-${ARCH}-0.1.1 .
docker push schnell18/zulu-java:alpine-jdk17-${ARCH}-0.1.1
cd ..
