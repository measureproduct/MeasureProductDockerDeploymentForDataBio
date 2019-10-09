FROM mysql:5.7

ENV MYSQL_USER root
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
ENV MYSQL_DATABASE measureplatform

COPY ./sql-scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306
