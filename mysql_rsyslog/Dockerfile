FROM mysql:5.7

RUN mkdir -p /var/lib/mysql2; \
    sed --in-place -e '/^datadir\s*=\s*\/var\/lib\/mysql/cdatadir        = /var/lib/mysql2' /etc/mysql/my.cnf; \
    chown mysql:mysql /var/lib/mysql2

#Install rsyslog-mysql

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive /usr/bin/apt-get -y install rsyslog-mysql

#Copy rsyslog files

COPY createDB.sql ./createDB.sql
COPY rsyslog.conf /etc/rsyslog.conf
COPY run.sh ./run.sh

VOLUME /var/lib/mysql2

