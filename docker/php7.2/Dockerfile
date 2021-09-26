FROM php:7.2-fpm

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME


USER root

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}

RUN apt-get update && apt-get -y install curl zip git gnupg sendmail
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update && apt-get install -y nodejs yarn libxml2-dev zlib1g-dev libzip-dev
RUN docker-php-ext-install pdo_mysql mysqli soap xml zip intl xmlrpc opcache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv

RUN pecl install redis-5.0.2 \
    && pecl install mongodb-1.6.0 \
    && docker-php-ext-enable redis mongodb

RUN echo 'memory_limit = 512M' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini
RUN echo 'sendmail_path = /usr/sbin/sendmail -S mail:1025' >> /usr/local/etc/php/conf.d/docker-hogmail.ini

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN cp composer.phar /usr/bin/composer
RUN chmod a+x /usr/bin/composer

WORKDIR /projects

USER ${USERID}
