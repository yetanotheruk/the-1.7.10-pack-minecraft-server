################################################################################
#Script Name    : Dockerfile
#Description    : Create the Docker image for The 1.7.10 Pack - Minecraft Server
#Author         : Ashley Baker
#Website        : https://yetanother.uk/
################################################################################

# JRE base
FROM openjdk:8-jre-slim

# Environment variables
ENV EULA="false" \
    MOD_PACK_BUILD="0.9.8d"

ADD minecraft.sh .
RUN apt-get update \
    && apt-get install -y unzip \
    && apt-get install -y wget \
    && apt-get install -y jq \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /minecraft

# Start script
CMD ["sh", "./minecraft.sh"]

# Container setup
EXPOSE 25565/tcp
EXPOSE 25565/udp
VOLUME /minecraft
