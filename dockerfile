# Use the official Amazon Linux image as a base
FROM amazonlinux:latest

# Install Apache HTTP Server
RUN yum install -y httpd

# Create a directory for the web content
RUN mkdir -p /var/www/html

# Copy the index.html file to the Apache default directory
COPY ./mywebapp/ /var/www/html/

# Set the correct permissions for Apache
RUN chown -R apache:apache /var/www/html
RUN chmod -R 755 /var/www/html

# Enable and start Apache
#RUN systemctl start httpd
RUN systemctl enable httpd

# Use this command to start Apache when the container runs
CMD ["httpd", "-D", "FOREGROUND"]

