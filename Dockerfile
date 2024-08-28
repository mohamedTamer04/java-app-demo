# Dockerfile

# Use a Maven image to build the project
FROM maven:3.8.6-eclipse-temurin-17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml file and the src directory to the working directory
COPY pom.xml .
COPY src ./src

# Build the project using Maven
RUN mvn clean package

# Use a smaller JRE image for the runtime environment
FROM eclipse-temurin:17-jre

# Set the working directory for the runtime environment
WORKDIR /app

# Copy the built JAR file from the build image
COPY --from=build /app/target/demo-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
