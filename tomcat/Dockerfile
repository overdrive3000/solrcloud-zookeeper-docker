FROM freedev/java8

MAINTAINER Vincenzo D'Amore <v.damore@gmail.com>

# ADD tomcat.tar.gz /opt

RUN mkdir -p /opt/tomcat \
    && curl -SL http://mirror.nohup.it/apache/tomcat/tomcat-7/v7.0.65/bin/apache-tomcat-7.0.65.tar.gz \
    | tar -xz -C /opt/tomcat --strip-components=1

# COPY apache-tomcat-7.0.61 /opt/tomcat

RUN chown -R root:root /opt && mkdir -p /opt/config

EXPOSE 8080
