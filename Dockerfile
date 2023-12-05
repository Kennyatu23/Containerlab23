#FROM ubuntu:latest
#LABEL authors="G00267173@atu.ie"

#ENTRYPOINT ["top", "-b"]
#Use a base image with java and an appropriate version
FROM openjdk:17
#Set the working directory inside the container
WORKDIR /app

# Copy the Jar file into the container
COPY target/Dockerlab2023-0.0.1-SNAPSHOT.jar /app

# Expose the port that the Spring Boot application will run on
EXPOSE 8080


# cOMMAND TO RUN THE APPLICATION
CMD ["java", "-jar", "Dockerlab2023-0.0.1-SNAPSHOT.jar"]