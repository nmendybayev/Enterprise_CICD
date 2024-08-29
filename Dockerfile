FROM maven:3.9.0-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY mvnw mvnw
COPY mvnw.cmd mvnw.cmd
COPY src src
RUN mvn clean install

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/helloapp-1.0.0.jar /app/helloapp.jar
EXPOSE 8080
CMD ["java", "-jar", "helloapp.jar"]