FROM bananabb/ubuntu-base:base.1.0.0
MAINTAINER BananaBb

# Install nginx & packages & php
RUN sudo apt-get update \
 && echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \ 
 && sudo apt-get install -y \
    nginx \ 
    supervisor \ 
    cron \
    libpcre3-dev \ 
    python-software-properties \ 
    software-properties-common \
    php5-fpm \ 
    php5-mysql \ 
    php5-mcrypt \ 
    php5-gd \ 
    php5-memcached \ 
    php5-curl \ 
    php5-xdebug \ 
    php-pear \ 
    php5-dev \ 
 && pecl install mongodb

# Build Folder
RUN mkdir -p /var/www/public \ 
  /var/log/supervisor \ 
  /etc/nginx \ 
  /var/run/php5-fpm \ 
  /etc/php5/conf.d

# Setup File
RUN ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/conf.d/mcrypt.ini \
 && php5enmod mcrypt \
 && sudo rm /etc/nginx/sites-available/default \
 && sudo cp /usr/share/nginx/html/index.html /var/www/public/ \
 && echo "<?php phpinfo();?>" >> /var/www/public/info.php \ 
 && echo "extension=mongodb.so" >> /etc/php5/fpm/php.ini \ 
 && echo "extension=mongodb.so" >> /etc/php5/cli/php.ini

# File setting
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY Default /etc/nginx/sites-available/default
COPY installer composer-setup.php

# Setup Composer
RUN php composer-setup.php \
 && mv composer.phar /usr/local/bin/composer \
 && rm composer-setup.php

EXPOSE 80 443
CMD ["/usr/bin/supervisord"]