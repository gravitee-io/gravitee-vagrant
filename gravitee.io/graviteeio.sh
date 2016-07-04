#!/bin/bash

GRAVITEEIO_VERSION=0.15.0

sudo mkdir -p /home/graviteeio

cd /home/graviteeio

wget --progress=bar:force https://dl.bintray.com/gravitee-io/release/$GRAVITEEIO_VERSION/graviteeio-full-$GRAVITEEIO_VERSION.zip
unzip -o graviteeio-full-$GRAVITEEIO_VERSION.zip -d .
sudo rm graviteeio-full-$GRAVITEEIO_VERSION.zip

wget --progress=bar:force https://repo1.maven.org/maven2/io/gravitee/oauth2/server/gravitee-oauth2-server/1.0.0/gravitee-oauth2-server-1.0.0.war
sudo mv gravitee-oauth2-server-1.0.0.war /usr/tomcat8/webapps/ROOT.war

sudo cp -fr /vagrant/gravitee.io/*.service /etc/systemd/system/
sudo systemctl start giogateway
sudo systemctl enable giogateway
sudo systemctl start giomngmt
sudo systemctl enable giomngmt
sudo chcon -Rt httpd_sys_content_t /home/graviteeio/graviteeio-full-$GRAVITEEIO_VERSION/graviteeio-management-ui-$GRAVITEEIO_VERSION/

