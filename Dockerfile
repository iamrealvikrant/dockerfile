# Use the official Tomcat image as the base image
FROM tomcat:9.0.55-jdk8-openjdk-slim-buster

# Expose port 8080
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
