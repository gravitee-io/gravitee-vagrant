#!/bin/bash

ELASTICSEARCH_VERSION=1.7.2

echo "Installing Elasticsearch version: $ELASTICSEARCH_VERSION"

sudo cp -fr /vagrant/repo/elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo
sudo yum -y install elasticsearch-$ELASTICSEARCH_VERSION

echo 'http.cors.enabled: true' >> /etc/elasticsearch/elasticsearch.yml
echo 'http.cors.allow-origin: "*"' >> /etc/elasticsearch/elasticsearch.yml

/usr/share/elasticsearch/bin/plugin --install lmenezes/elasticsearch-kopf
/usr/share/elasticsearch/bin/plugin --install royrusso/elasticsearch-HQ
/usr/share/elasticsearch/bin/plugin --install lukas-vlcek/bigdesk
/usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head

echo "Elasticsearch $ELASTICSEARCH_VERSION has been successfully installed"