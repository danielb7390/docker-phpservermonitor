#!/bin/bash
service cron start
php composer.phar install
/usr/sbin/apache2ctl -D FOREGROUND
