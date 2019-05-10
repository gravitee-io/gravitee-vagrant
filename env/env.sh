#!/bin/bash

echo "Updating environment..."
sudo yum -y update
sudo yum -y install wget unzip yum net-tools

# Install Oracle Java
echo "Installing OpenJDK..."
sudo yum -y install java-1.8.0-openjdk
sudo yum -y install java-1.8.0-openjdk-devel

echo "OS tuning..."
sudo sysctl -w net.core.somaxconn=32768
sudo sysctl -p

echo "System has been updated..."
