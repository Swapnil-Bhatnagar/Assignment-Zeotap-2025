# Use the official OpenJDK image as a base
FROM openjdk:21-jdk-slim
VOLUME /tmp
# Copy the built JAR file from the target directory to the container
COPY target/weather-monitoring-system-0.0.1-SNAPSHOT.jar app.jar

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
