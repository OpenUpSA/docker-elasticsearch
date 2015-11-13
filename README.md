# Dockerfile for ElasticSearch

This is based on the [main ElasticSearch Dockerfile](https://hub.docker.com/_/elasticsearch/) for ElasticSearch 1.7 and adds:

* [elasticsearch-mapper-attachments](https://github.com/elastic/elasticsearch-mapper-attachments)

To use:

    docker build -t code4sa/elasticsearch https://github.com/Code4SA/docker-elasticsearch.git
    sudo mkdir -p /var/elasticsearch/data
    docker run -d --restart=always -p 9200:9200 -p 9300:9300 -v /var/elasticsearch/data:/usr/share/elasticsearch/data elasticsearch
