FROM php:apache
MAINTAINER Scavin <scavin@appinn.com>

RUN apt-get update && apt-get -y install git cron wget && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN /usr/sbin/a2dismod 'mpm_*' && /usr/sbin/a2enmod mpm_prefork
RUN docker-php-ext-install pdo pdo_mysql

ADD crontab /etc/cron.d/status-cron
ADD init.sh /init.sh
RUN chmod +x /init.sh \
    && chmod 0644 /etc/cron.d/status-cron \
    && crontab /etc/cron.d/status-cron

EXPOSE 80
EXPOSE 443

ENV VERSION develop
ENV PHPMONITOR_URL https://github.com/scavin/phpservermon.git

RUN set -x \
    && cd /var/www/html \
    && rm -rf * \
    && cd /tmp \
    && git clone -b $VERSION $PHPMONITOR_URL \
    && cd phpservermon \
    && mv * /var/www/html \
    && cd /var/www/html \
    && touch config.php \
    && chmod 0777 config.php
    
ENTRYPOINT ["/init.sh"]
