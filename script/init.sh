#!/bin/bash

yum -y install httpd php mysql php-mysql
systemctl enable httpd
cd /var/www/html
wget http://211.249.50.207/lab/lab.tgz
tar xvfz lab.tgz
cat phpadd >> /etc/httpd/conf/httpd.conf
systemctl start httpd

echo 'ncp!@#123' | passwd --stdin root
