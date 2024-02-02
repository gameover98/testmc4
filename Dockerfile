FROM ubuntu:jammy

#download forge
#https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.2.20/forge-1.20.1-47.2.20-installer.jar

RUN apt update && apt -y install git unzip wget openjdk-17-jre-headless
COPY . /usr/src/testforge
WORKDIR /usr/src/testforge
RUN git clone https://github.com/gameover98/testmc4.git
RUN wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.2.20/forge-1.20.1-47.2.20-installer.jar
RUN java -jar forge-1.20.1-47.2.20-installer.jar --installServer

