#!/bin/bash

MONGO_DB_VERSION=3.0.6

echo "Installing MongoDB version: $MONGO_DB_VERSION"

sudo cp -fr /vagrant/repo/mongodb-org-3.0.repo /etc/yum.repos.d/mongodb-org-3.0.repo
yum install -y mongodb-org-$MONGO_DB_VERSION mongodb-org-server-$MONGO_DB_VERSION mongodb-org-shell-$MONGO_DB_VERSION mongodb-org-mongos-$MONGO_DB_VERSION mongodb-org-tools-$MONGO_DB_VERSION

echo "MongoDB $MONGO_DB_VERSION has been successfully installed"