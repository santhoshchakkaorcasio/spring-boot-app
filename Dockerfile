# Use the official OpenJDK image as a parent image
FROM openjdk:17

RUN mkdir /app1

# Set the working directory inside the container
WORKDIR /app1

# Copy the Gradle project files to the container
COPY build/libs/*.jar app1.jar

# Expose the port your Spring Boot application will listen on
EXPOSE 8080

# Permissions 
RUN chmod +x /app1

# Command to run your application
CMD ["java", "-jar", "app1.jar"]