# Use Eclipse Temurin JDK 21 as the base image, because docker uses jdk 17 by default
FROM eclipse-temurin:21-jdk 

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /minecraft

RUN apt-get update && \
    apt-get install -y openjdk-17-jre-headless wget && \
    wget -O server.jar https://piston-data.mojang.com/v1/objects/95495a7f485eedd84ce928cef5e223b757d2f764/server.jar && \
    echo "eula=true" > eula.txt

RUN rm -rf /var/lib/apt/lists/*

EXPOSE 25565

ENTRYPOINT [ "java" ]

CMD [ "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui" ]