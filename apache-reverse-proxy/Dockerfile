FROM ubuntu

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN apt-get update && apt-get install -y apache2 && apt-get clean

RUN a2enmod proxy && a2enmod proxy_http && a2enmod proxy_balancer && a2enmod lbmethod_byrequests

COPY ./000-default.conf /etc/apache2/sites-available/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]