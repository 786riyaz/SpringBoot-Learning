# Use Java 17
FROM eclipse-temurin:17-jdk-alpine

# App directory inside container
WORKDIR /app

# Copy built jar
COPY build/libs/*.jar app.jar

# Expose port
EXPOSE 3000

# Run Spring Boot
ENTRYPOINT ["java","-jar","app.jar"]
