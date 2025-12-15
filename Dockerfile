FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml /app/pom.xml
RUN mvn  dependency:go-offline
COPY src  /app/src
RUN mvn clean package -DskipTests

# -------- STAGE 2: RUNTIME --------
FROM eclipse-temurin:17-jre-alpine
COPY --from=build /targte/*.jar app.jar
EXPOSE 8080
ENTRYPOINT [ "java","-jar","app.jar" ]