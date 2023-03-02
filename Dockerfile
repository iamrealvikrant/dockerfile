# Use the official Tomcat image as the base image
FROM tomcat:9.0.72-jre8-temurin-jammy

# Working dir
WORKDIR /usr/local/tomcat

# Expose port 8080
EXPOSE 8080

# Running a tomcat
Copy sudo docker cp /mnt/slave-1/gameoflife.war tomcat:9.0.72-jre8-temurin-jammy:webapps/

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
