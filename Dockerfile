FROM        adoptopenjdk/openjdk14:alpine

LABEL       author="Travis Shivers" maintainer="ttshivers@gmail.com"

RUN apk --no-cache add curl iproute2 && adduser -S container
 
USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/sh", "/entrypoint.sh"]
