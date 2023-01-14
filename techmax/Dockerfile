FROM amazonlinux:latest

# Install dependencies
RUN yum update - y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y

# Change directory
RUN cd /var/www/html

# Download website files
RUN wget https://github.com/azeezsalu/techmax/archive/refs/heads/main.zip

# Unzip folder
RUN unzip main.zip

# Copy files into html directory
RUN cp -R /techmax /var/www/html

# Remove unwanted folder
RUN rm -rf techmax main.zip

# Expose port 80 on container
EXPOSE 80

# Set the default application that will start when the container start
ENTRYPOINT ["/usr/sbin/httpd", "D", "FOREGROUND"]