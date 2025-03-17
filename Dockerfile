FROM php:7.4-apache

# Set maintainer
MAINTAINER Zane Durkin <zane@neverlanctf.org>

# Copy web files
COPY web/ /var/www/html/

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Enable Apache mod_rewrite (if needed)
RUN a2enmod rewrite

# Expose port 80 (default for Apache)
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
