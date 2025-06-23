# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy all files to Apache's web root
COPY . /var/www/html/

# Enable Apache rewrite module (optional for cleaner URLs)
RUN a2enmod rewrite

# Expose port 80 so Render knows where to connect
EXPOSE 80