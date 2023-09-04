FROM centos:7
COPY startUpScript.sh /
COPY pg_hba.conf / 
COPY postgresql.conf / 
RUN yum install -y epel-release maven wget
RUN yum clean all
RUN yum install -y  https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
RUN yum install -y postgresql15-server postgresql15-contrib
RUN chown root /startUpScript.sh
RUN chgrp root /startUpScript.sh
RUN chown postgres /pg_hba.conf
RUN chgrp postgres /pg_hba.conf
RUN chown -R postgres /var/lib/pgsql/15/data
RUN chmod 777 /startUpScript.sh
RUN chmod 777 /pg_hba.conf
CMD ["/bin/bash","-c","/startUpScript.sh && tail -f /dev/null"]
