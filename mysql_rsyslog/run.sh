#!/usr/bin/env bash

mysql --user=root --password=$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < createDB.sql

sed -i s/{{MYSQL_DATABASE}}/$MYSQL_DATABASE/ /etc/rsyslog.conf
sed -i s/{{MYSQL_ROOT_PASSWORD}}/$MYSQL_ROOT_PASSWORD/ /etc/rsyslog.conf

service rsyslog restart
