FROM dunglas/frankenphp

RUN install-php-extensions \
    pdo_mysql \
    gd \
    intl \
    zip \
    opcache \
    oci8

# Hanya saat development:
ENV SERVER_NAME=":80"

# untuk mode worker:
# ENV FRANKENPHP_CONFIG="worker /app/public/frankenphp-worker.php
