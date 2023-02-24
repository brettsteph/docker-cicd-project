FROM ubuntu:latest

# Install dependencies
RUN apt update -y && \
    apt install -y apache2 && \
    # apt apache2-utils && \
    apt clean && \
    service apache2 start && \
    service apache2 status && \
    apt install ufw -y && \
    sudo ufw allow 'Apache' && \
    sudo ufw status && \
    apt install wget -y && \
    apt install unzip -y

# Change directory
RUN cd /var/www/html

# Download website files
RUN wget https://github.com/arvind37/Basic-Website-using-HTML-CSS/archive/refs/heads/master.zip

# Unzip folder
RUN unzip main.zip

# Copy files into html directory recursively
RUN cp -R Basic-Website-using-HTML-CSS-master/* /var/www/html

# Remove unwanted folder
RUN rm -rf Basic-Website-using-HTML-CSS-master Basic-Website-using-HTML-CSS-master.zip

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

# Expose port 80 on container
EXPOSE 80

# Set the default application that will start when the container start
ENTRYPOINT ["/usr/sbin/apache2", "-D", "FOREGROUND"]