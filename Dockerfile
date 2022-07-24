
FROM openjdk:17
RUN microdnf install git

WORKDIR /data
RUN git --version
