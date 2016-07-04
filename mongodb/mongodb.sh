#!/bin/bash

MONGO_DB_VERSION=3.2.7

echo "Installing MongoDB version: $MONGO_DB_VERSION"

sudo cp -fr /vagrant/mongodb/mongodb-org-3.2.repo /etc/yum.repos.d/mongodb-org-3.2.repo
yum install -y mongodb-org-$MONGO_DB_VERSION mongodb-org-server-$MONGO_DB_VERSION mongodb-org-shell-$MONGO_DB_VERSION mongodb-org-mongos-$MONGO_DB_VERSION mongodb-org-tools-$MONGO_DB_VERSION

sudo service mongod start
sudo chkconfig mongod on

echo "MongoDB $MONGO_DB_VERSION has been successfully installed"
