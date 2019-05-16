# mvn-base-dependencies
The base dependencies that I usually use on my mvn JEE projects

To avoid download maven dependencies over and over on ever build to your maven project on docker,
you can build you project from this image.

Your Dokerfile will look like this:

```
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
