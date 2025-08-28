FROM maven:3.8.7-eclipse-temurin-17 AS build
WORKDIR /workspace
COPY pom.xml ./ 
COPY src ./src
RUN mvn -B -DskipTests package

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /workspace/target/java-app-1.0.0.jar ./app.jar
CMD ["java", "-jar", "app.jar"]
