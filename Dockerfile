FROM maven:3.9-eclipse-temurin-11

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

CMD ["java", "-cp", "target/java-docker-jenkins-1.0.jar", "App"]
