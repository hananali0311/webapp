# Use the official Tomcat image from the Docker Hub
FROM tomcat:9-jdk11

# Remove the default web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Add your WAR file to the webapps directory with a new name
COPY target/WebApp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat will run on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
