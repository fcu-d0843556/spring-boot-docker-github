FROM openjdk:17
RUN git clone https://github.com/fcu-d0843556/spring-boot-docker-github
ADD target/spring-boot-docker-0.0.1-SNAPSHOT.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","spring-boot-docker.jar"]