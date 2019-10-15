FROM openjdk:8-jre-alpine

LABEL description="Image with the Measure-Platform"

WORKDIR /home

# The Host IP address
ENV HOST_IP_ADDR=127.0.0.1
# Spring data jpa configuration
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql-db:3306/measureplatform?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true
ENV MYSQL_USER=root
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
ENV MYSQL_DRIVER=com.mysql.jdbc.Driver
# MeasurePlatform packaging
ENV ZIP_URL=https://github.com/measureproduct/MeasurePlatform/releases/download/MeasurePlatform-1.0.2/MeasurePlatform.V1.0.2.zip
ENV ZIP_FILE=MeasurePlatform.V1.0.2.zip
ENV JAR_FILE=measure-platform-1.0.2.war
# Datasource catalogue
ENV ZIP_CATALOGUE_URL=https://github.com/measureproduct/DataSourceCatalog/releases/download/v1.0.0/DataSourceCatalog.zip
ENV ZIP_CATALOGUE_FILE=DataSourceCatalog.zip
# Datasources storage path
ENV MEASURE_PLATFORM_STORAGE_MEASURE=/home/PackagedPlatform/storage/measures
ENV MEASURE_PLATFORM_STORAGE_APPLICATION=/home/PackagedPlatform/storage/applications
# Elasticsearch configuration
ENV ELASTICSEARCH_CLUSTER_NAME=docker-cluster
# Mailing service configuration
ENV SPRING_MAIL_USERNAME=
ENV SPRING_MAIL_PASSWORD=
ENV SPRING_MAIL_HOST=
ENV SPRING_MAIL_PORT=
ENV SPRING_MAIL_PROTOCOL=
ENV SPRING_MAIL_TLS=
ENV SPRING_MAIL_PROPERTIES_MAIL_SMTP_AUTH=
ENV SPRING_MAIL_PROPERTIES_MAIL_SMTP_STARTTLS_ENABLE=
ENV SPRING_MAIL_PROPERTIES_MAIL_SMTP_SSL_TRUST=

RUN apk add --update bash \
            curl \
            unzip \
&& rm -rf /var/cache/apk/*

RUN wget ${ZIP_URL} \
&& unzip ${ZIP_FILE} \
&& rm ${ZIP_FILE} 

COPY application.properties ./application.properties

COPY wait-for-it.sh ./wait-for-it.sh
RUN chmod +x ./wait-for-it.sh

COPY startup.sh ./startup.sh
RUN chmod +x ./startup.sh && ./startup.sh

ENTRYPOINT ["java","-jar","${JAR_FILE}"]
