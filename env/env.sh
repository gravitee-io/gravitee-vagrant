#!/bin/bash

echo "Updating environment..."
sudo yum -y update
sudo yum -y install wget unzip yum net-tools

# Install Oracle Java
echo "Installing Java JDK..."
sudo wget --progress=bar:force --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-linux-x64.rpm"
sudo yum -y localinstall jdk-8u73-linux-x64.rpm
sudo rm jdk-8u*-linux-x64.rpm

echo "OS tuning..."
sudo sysctl -w net.core.somaxconn=32768
sudo sysctl -p

echo "System has been updated..."
