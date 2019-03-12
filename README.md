
# PHPServerMonitor in Docker (Last version 3.3.2)

### Last update : 03/12/2019 . Created repository with version 3.3.2


### PHPServerMonitor

[PHPServerMonitor](http://www.phpservermonitor.org/) is a script that checks whether your websites and servers are up and running. It comes with a web based user interface where you can manage your services and websites, and you can manage users for each server with a mobile number and email address.

https://github.com/phpservermon/phpservermon

### Docker Compose

```docker-compose up -d```

http://ip

#### crontab config

Default: 5 minutes and 10 seconds

Edit file ```crontab```:

```*/5 * * * * /usr/local/bin/php /var/www/html/cron/status.cron.php --timeout=310```

http://docs.phpservermonitor.org/en/latest/install.html#setting-up-a-cronjob

#### Database configuration


If you used my docker-compose.yml file you have to : 

1. Go on phpmyadmin : http://ip_of_your_server:81  (If you don't want to use phpmyadmin for security reasons you can just delete the container in my docker-compose.yml file and create your database with the command line from the container MySQL.)
2. Create a database : monitor (you can use another name)
3. Go on PhpServerMonitor : http://ip_of_your_server

![](https://raw.githubusercontent.com/Quentinvarquet/docker-phpservermonitor/master/img/install.png)

* **Database Host:** mysql_container_name
* **Database Name:** monitor
* **Database User:** root
* **Data Password:** your_password
* **Table Previx:** psm_

### THANKS
* https://stackoverflow.com/questions/37458287/how-to-run-a-cron-job-inside-a-docker-container
* https://stackoverflow.com/questions/49137347/why-i-cannot-get-cron-started-in-docker-container
* https://twitter.com/AgentNEO_ss/status/1105463144690769921
