# Use the official Tomcat image as the base image
FROM tomcat

# Expose port 8080
EXPOSE 8080

# Copy war file
COPY /mnt/slave-1/gameoflife.war my-tomcat-image:/usr/local/tomcat/webapps/

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
