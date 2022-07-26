

FROM maven:3-openjdk-18


RUN microdnf install git
WORKDIR /data
RUN git clone https://github.com/fcu-d0843556/spring-boot-docker-github /data/app

RUN mvn -f /data/app clean package

WORKDIR /data/app/target
ENTRYPOINT ["java","-jar","spring-boot-docker.jar"]