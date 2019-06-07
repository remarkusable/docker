FROM php:7.3-fpm-alpine

RUN apk add --no-cache \
  git \
  openssh \
  shadow \
  coreutils \
  freetype-dev \
  libjpeg-turbo-dev \
  libpng-dev \
  libzip-dev \
  zip \
  libxml2-dev \
  g++ make autoconf \
  && docker-php-ext-configure soap --enable-soap \
  && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip mysqli pdo pdo_mysql bcmath pcntl gd soap \
  && pecl install xdebug \
  && docker-php-ext-enable xdebug \
  && apk del g++ make autoconf \
  && rm -rf /var/cache/apk/*

RUN echo "short_open_tag = Off" >> /usr/local/etc/php/php.ini

CMD ["php-fpm"]

EXPOSE 9000