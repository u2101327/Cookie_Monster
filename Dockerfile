# Use the base image with PHP and Apache
FROM neverlanctf/base:5th-year

# Set maintainer (optional)
LABEL maintainer="Zane Durkin <zane@neverlanctf.org>"

# Ensure Apache is installed
RUN apt-get update && apt-get install -y apache2

# Copy web files into the Apache web root
COPY web/ /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
