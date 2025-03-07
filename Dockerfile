FROM php:apache  # Use a publicly available PHP + Apache image

# Set maintainer (optional)
LABEL maintainer="Zane Durkin <zane@neverlanctf.org>"

# Copy web files into the Apache web root
COPY web/ /var/www/html

# Expose port 80 (Apache default)
EXPOSE 80
