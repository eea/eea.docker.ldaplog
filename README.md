
1. Create ldaplog.env and db.env using ldaplog.env.example and db.env.example

2. Run docker-compose:

        docker-compose -d up

3. Sync databases:

        docker exec eealdockerldaplog_ldaplog_1 /bin/bash -c "ldaplog/manage.py syncdb"

App will be available at 127.0.0.1:8000

1. Configure rsyslog:

        docker exec -ti eealdockerldaplog_db_1 ./run.sh

2. Run update:

        docker exec eealdockerldaplog_ldaplog_1 /bin/bash -c "env ldaplog/manage.py update"
