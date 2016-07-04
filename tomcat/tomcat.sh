#!/bin/bash

TOMCAT_VERSION=8.0.36

echo "Installing Tomcat version: $TOMCAT_VERSION"

wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz
tar zxvf apache-tomcat-$TOMCAT_VERSION.tar.gz 
sudo mv apache-tomcat-$TOMCAT_VERSION /usr/tomcat8 
sudo useradd -M -d /usr/tomcat8 tomcat8 
sudo chown -R tomcat8. /usr/tomcat8
sudo rm -rf /usr/tomcat8/webapps/*

sudo cp -fr /vagrant/tomcat/tomcat8.service /etc/systemd/system/
systemctl start tomcat8
systemctl enable tomcat8

echo "Tomcat  $TOMCAT_VERSION has been successfully installed"
