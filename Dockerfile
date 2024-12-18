FROM php:8.1-fpm

# Install required PHP extensions
RUN apt-get update && apt-get install -y libpq-dev && \
    docker-php-ext-install pdo_pgsql pgsql curl

# Copy your application files to the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Run the server
CMD ["php-fpm"]
