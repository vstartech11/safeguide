# Gunakan PHP FPM image yang sesuai
FROM php:8.1-fpm

# Install dependensi sistem yang diperlukan untuk ekstensi PHP
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libcurl4-openssl-dev \
    && docker-php-ext-install pdo_pgsql pgsql curl

# Salin kode proyek Anda ke dalam container
WORKDIR /var/www/html
COPY . /var/www/html

# Tentukan hak akses file dan direktori
RUN chown -R www-data:www-data /var/www/html

# Jalankan PHP-FPM
CMD ["php-fpm"]
