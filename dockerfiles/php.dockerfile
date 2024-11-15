FROM php:8.3-fpm-alpine

ENV PHPGROUP=detpos
ENV PHPUSER=detpos

RUN adduser -g ${PHPGROUP} -s /bin/sh -D ${PHPUSER}

RUN sed -i "s/user = www-data/user = ${PHPUSER}/g" /usr/local/etc/php-fpm.d/www.conf
RUN sed -i "s/group = www-data/group = ${PHPGROUP}/g" /usr/local/etc/php-fpm.d/www.conf

RUN mkdir -p /var/www/html/public

RUN docker-php-ext-install pdo pdo_mysql pcntl \
    && docker-php-ext-configure pcntl --enable-pcntl

CMD ["php-fpm", "-y", "/usr/local/etc/php-fpm.conf", "-R"]
