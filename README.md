
1. Create ldaplog.env and db.env using ldaplog.env.example and db.env.example

2. Run docker-compose:

        docker-compose -d up

3. Sync databases:

        docker exec eeadockerldaplog_ldaplog_1 /bin/bash -c "ldaplog/manage.py syncdb"

App will be available at 127.0.0.1:8000

1. Configure rsyslog:

        docker exec -ti eeadockerldaplog_db_1 /bin/bash
        apt-get update && apt-get install -y vim rsyslog-mysql
        dpkg-reconfigure rsyslog-mysql
        vim /etc/rsyslog.conf

   Add to modules : $ModLoad ommysql

   Append to end of file: local4.* :ommysql:db_host,db_name,db_user,db_password

        service rsyslog restart

2. Run update:

        docker exec eeadockerldaplog_ldaplog_1 /bin/bash -c "env ldaplog/manage.py update"
