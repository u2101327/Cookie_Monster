# Use the base image with PHP and Apache
FROM neverlanctf/base:5th-year

# Set maintainer (optional)
LABEL maintainer="Zane Durkin <zane@neverlanctf.org>"

# Copy web files into the Apache web root
COPY web/ /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground (ensuring the container keeps running)
CMD ["apache2-foreground"]
