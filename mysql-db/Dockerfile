FROM mysql:5.7.13

ENV MYSQL_USER root
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
ENV MYSQL_DATABASE measureplatform

ADD ./measureplatform.sql /home

WORKDIR /home

COPY mysql-dbs-restore.sh ./mysql-dbs-restore.sh
RUN chmod 777 /home/mysql-dbs-restore.sh

CMD ["/bin/bash", "/home/mysql-dbs-restore.sh"]

