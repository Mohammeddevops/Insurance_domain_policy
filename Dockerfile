# FROM maven:3-openjdk-17-slim

# WORKDIR /app

# # Add the application's jar to the container
# COPY ./target/policy-0.0.1-SNAPSHOT.jar .

# #execute the application
# ENTRYPOINT ["java","-jar","policy-0.0.1-SNAPSHOT.jar"]

FROM openjdk:11
COPY target/*.jar app.jar
COPY src/main/webapp/ /static/
WORKDIR /
ENTRYPOINT ["java", "-jar", "app.jar"]
