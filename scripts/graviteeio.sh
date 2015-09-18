#!/bin/bash

GRAVITEE_VERSION=1.0.0-SNAPSHOT
MONGO_DB_VERSION=1.0.0

echo "Installing Gravitee.io version: $GRAVITEE_VERSION"

# Install required tools
yum -y install wget

# Install Oracle Java
sudo mkdir -p /usr/lib/jvm
sudo wget -q -O /tmp/jre-linux-x64.tar.gz --no-cookies --no-check-certificate --header 'Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.tar.gz
sudo tar zxvf /tmp/jre-linux-x64.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install '/usr/bin/java' 'java' '/usr/lib/jvm/jre1.8.0_60/bin/java' 1
sudo update-alternatives --set java /usr/lib/jvm/jre1.8.0_60/bin/java

echo "Gravitee.io has been successfully installed"