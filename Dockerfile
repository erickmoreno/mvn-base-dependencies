#
# Build stage
#
 FROM maven:3.6.0-jdk-11-slim
 COPY . /tmp
 RUN mvn -f /tmp/pom.xml clean package
