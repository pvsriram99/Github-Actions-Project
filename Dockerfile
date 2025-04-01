FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME=/usr/src/app

# Create the app directory if it does not exist
RUN mkdir -p $APP_HOME

# Debugging step to list directory structure
RUN ls -R /usr/src/

# Copy the .jar file to the app directory (Fixed COPY command)
COPY app/ /usr/src/app/

WORKDIR $APP_HOME

CMD ["java", "-jar", "bankapp-0.0.1-SNAPSHOT.jar"]
