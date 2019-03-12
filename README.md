
# PHPServerMonitor in Docker (Last version 3.2.0)

### Last update : 03/11/2019 . Created repository with version 3.2.0


### PHPServerMonitor

[PHPServerMonitor](http://www.phpservermonitor.org/) is a script that checks whether your websites and servers are up and running. It comes with a web based user interface where you can manage your services and websites, and you can manage users for each server with a mobile number and email address.

https://github.com/phpservermon/phpservermon

### Docker Compose

```docker-compose up -d```

#### Database configuration


If you used my docker-compose.yml file you have to : 

1 - Go on phpmyadmin : http://ip_of_your_server:81  (If you don't want to use phpmyadmin for security reasons you can just delete the container in my docker-compose.yml file and create your database with the command line from the container MySQL.)
2 - Create a database : monitor (you can use another name)
3 - Go on PhpServerMonitor : http://ip_of_your_server

![](https://raw.githubusercontent.com/Quentinvarquet/docker-phpservermonitor/master/img/install.png)

* **Database Host:** mysql_container_name
* **Database Name:** monitor
* **Database User:** root
* **Data Password:** your_password
* **Table Previx:** psm_

