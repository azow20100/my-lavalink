FROM openjdk:17-slim

WORKDIR /opt/Lavalink

RUN apt-get update && apt-get install -y wget && \
    wget https://github.com/lavalink-devs/Lavalink/releases/download/4.0.7/Lavalink.jar

COPY application.yml application.yml

EXPOSE 2333

CMD ["java", "-Xmx400M", "-jar", "Lavalink.jar"]
