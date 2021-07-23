#!/bin/bash

# Install necessary dependencies
sudo yum -y install git
sudo yum update -y
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
sudo yum install -y httpd mariadb-server
sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www
cd /var/www
mkdir inc
cd inc
echo "<?php
define('DB_SERVER', '${rds_endpoint}');
define('DB_USERNAME', '${user}');
define('DB_PASSWORD', '${password}');
define('DB_DATABASE', '${dbname}');
?>" > dbinfo.inc

sudo git clone https://github.com/arin7637/terraform-code-rds.git && cd terraform-code-rds
sudo cp SamplePage.php index.html  /var/www/html/
