#!/bin/bash

sudo yum -y install epel-release
sudo yum -y install nginx

sudo cp -fr /vagrant/nginx/nginx.conf /etc/nginx/

sudo systemctl start nginx
sudo systemctl enable nginx

#sudo firewall-cmd --permanent --zone=public --add-service=http 
#sudo firewall-cmd --permanent --zone=public --add-service=https
#sudo firewall-cmd --reload
sudo setsebool httpd_can_network_connect on -P
