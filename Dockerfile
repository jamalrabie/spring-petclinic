FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/jamalrabie/spring-petclinic

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/spring-petclinic /app 
RUN mvn install 

FROM openjdk:8u191-jre-alpine
WORKDIR /app
COPY --from=1 /app/target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar /app 
EXPOSE 8080
RUN java -jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
