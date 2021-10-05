# syntax=docker/dockerfile:1
FROM postgres:9.6-alpine
RUN apk add lsof openjdk8 && mkdir /opt/solr && cd /opt/solr && wget https://downloads.apache.org/lucene/solr/8.10.0/solr-8.10.0.tgz && tar zxf solr-8.10.0.tgz && rm solr-8.10.0.tgz 
CMD ["/opt/solr/solr-8.10.0/bin/solr", "start", "-force"]

# FROM ubuntu:20.04
# ENV DEBIAN_FRONTEND noninteractive
# RUN apt update && apt install -y wget openjdk-8-jdk postgresql postgresql-contrib && pg_ctlcluster 12 main start && mkdir /opt/solr && cd /opt/solr && wget https://downloads.apache.org/lucene/solr/8.10.0/solr-8.10.0.tgz && tar zxf solr-8.10.0.tgz && rm solr-8.10.0.tgz 
# CMD ["/opt/solr/solr-8.10.0/bin/solr", "start", "-force"]
