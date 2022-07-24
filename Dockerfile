
FROM openjdk:17
RUN microdnf install git
WORKDIR /data
RUN git clone https://github.com/fcu-d0843556/spring-boot-docker-github /data/app
FROM maven:3-openjdk-18
RUN mvn clean package
ADD /data/app/target/spring-boot-docker-0.0.1-SNAPSHOT.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","spring-boot-docker.jar"]