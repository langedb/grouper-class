#!/bin/sh
set -x

service mysql start

service slapd start

rm -rf /opt/apache-tomcat-6.0.43/work/*

/opt/apache-tomcat-6.0.43/bin/startup.sh

cd /opt/grouper.apiBinary-2.2.1/
bin/gsh -loader
