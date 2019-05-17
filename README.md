# Maven base dependencies
[![Docker Build Status](https://img.shields.io/docker/build/erickmoreno/mvn-base-dependencies.svg)](https://hub.docker.com/r/erickmoreno/mvn-base-dependencies/)
[![Docker Automated build](https://img.shields.io/docker/automated/erickmoreno/mvn-base-dependencies.svg)](https://hub.docker.com/r/erickmoreno/mvn-base-dependencies/)

## About
The base dependencies that I usually need to build mvn JEE projects

This image is util to avoid download maven dependencies over and over on every build to a maven project on docker.

### Requirements

- [Docker](https://docs.docker.com/engine/installation/) (including docker-compose)

Your Dokerfile will look like this:

```Dockerfile
#
# Build stage
#
 FROM erickmoreno/mvn-base-dependencies:latest as buildImage
 COPY . /tmp
 RUN mvn -f /tmp/pom.xml clean package

# 
# Package stage
#  
 FROM jboss/wildfly:16.0.0.Final
```
This image already pack lots of maven plugins and these explicit dependencies:

   <groupId>javax</groupId>
   <artifactId>javaee-api</artifactId>
   <version>8.0</version>

   <groupId>org.projectlombok</groupId>
   <artifactId>lombok</artifactId>
   <version>1.18.6</version>

   <groupId>com.fasterxml.jackson.core</groupId>
   <artifactId>jackson-databind</artifactId>
   <version>2.9.8</version>

   <groupId>org.yaml</groupId>
   <artifactId>snakeyaml</artifactId>
   <version>1.24</version>
