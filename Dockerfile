FROM php:8.2-cli

MAINTAINER Zane Durkin <zane@neverlanctf.org>

# Set working directory
WORKDIR /var/www/html

# Copy web files into the container
COPY web/ /var/www/html

# Expose port 5000
EXPOSE 5000

# Run PHP’s built-in server
CMD ["php", "-S", "0.0.0.0:5000"]
