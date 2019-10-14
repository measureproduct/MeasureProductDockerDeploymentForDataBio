FROM ubuntu

LABEL description="Image with the Measure-Reverse-Proxy"

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
# The Host IP address
ENV HOST_IP_ADDR=127.0.0.1

RUN apt-get update && apt-get install -y apache2 && apt-get clean

RUN a2enmod proxy && a2enmod proxy_http 

COPY ./000-default.conf /etc/apache2/sites-available/

CMD ["apachectl", "-D", "FOREGROUND"]