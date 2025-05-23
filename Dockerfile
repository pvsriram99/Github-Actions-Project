FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME=/opt

# Copy the .jar file to the app directory (Fixed COPY command)
COPY app/*.jar /opt/

WORKDIR $APP_HOME

CMD ["java", "-jar", "*.jar"]
