
1. Create ldaplog.env and db.env using ldaplog.env.example and db.env.example

2. Run docker-compose:

        docker-compose -d up

3. Configure rsyslog:

        docker exec -ti eeadockerldaplog_db_1 ./run.sh

4. Sync databases:

        docker exec eeadockerldaplog_ldaplog_1 /bin/bash -c "ldaplog/manage.py syncdb"

App will be available at 127.0.0.1:8000

1. Run update:

        docker exec eeadockerldaplog_ldaplog_1 /bin/bash -c "env ldaplog/manage.py update"
