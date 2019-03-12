#!/bin/bash
service cron start
/usr/sbin/apache2ctl -D FOREGROUND
