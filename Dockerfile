# Use the official Tomcat image as the base image
FROM tomcat:9.0.72-jre8-temurin-jammy

# Expose port 8080
EXPOSE 8080
# Run below commands
RUN docker run -itdp 8080:8080 --name tomcat tomcat:9.0.72-jre8-temurin-jammy && docker cp /mnt/slave-1/gameoflife.war tomcat:/usr/local/tomcat/webapps
# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
