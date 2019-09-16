FROM php:7-fpm

ARG GROUPID
ARG USERID
ARG GROUP_NAME
ARG USER_NAME


USER root

RUN groupadd -g ${GROUPID} ${GROUP_NAME} && \
    useradd -u ${USERID} -g ${GROUPID} -m ${USER_NAME}

    
RUN apt-get update && apt-get -y install curl zip git nodejs npm gnupg
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y  yarn
RUN docker-php-ext-install pdo_mysql

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN cp composer.phar /usr/bin/composer
RUN chmod a+x /usr/bin/composer
 
WORKDIR /projects

USER ${USERID}

