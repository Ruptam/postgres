#!/bin/bash
su -l postgres -c /usr/pgsql-15/bin/initdb
su -l postgres -c "/usr/pgsql-15/bin/pg_ctl -D /var/lib/pgsql/15/data -l /tmp/pg_logfile start"
#su -l postgres -c "mv /var/lib/pgsql/15/data/pg_hba.conf /var/lib/pgsql/15/data/pg_hba.conf.bkp"
#mv /pg_hba.conf /var/lib/pgsql/15/data/
#systemctl restart postgresql-15
