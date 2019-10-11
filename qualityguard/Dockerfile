FROM openjdk:8-jre-alpine

LABEL description="Image with the Quality-Guard"

WORKDIR /home

# QualityGuard packaging
ENV ZIP_URL=https://github.com/measureproduct/QualityGuard/releases/download/v1.2.0/quality-guard-v1.2.0.zip
ENV ZIP_FILE=quality-guard-v1.2.0.zip
ENV JAR_FILE=quality-guard-analysis-1.2.0.war
# Spring data jpa configuration
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql-db:3306/qualityguard?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true
ENV MYSQL_USER=root
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
ENV MYSQL_DRIVER=com.mysql.jdbc.Driver
# MEASURE PLATFORM Administrator
ENV MEASURE_PLATFORM_LOGIN=admin
ENV MEASURE_PLATFORM_PASSWORD=admin
# Elasticsearch configuration
ENV ELASTICSEARCH_CLUSTER_NAME=docker-cluster

RUN apk add --update bash \
            curl \
            unzip \
&& rm -rf /var/cache/apk/*

RUN wget ${ZIP_URL} \
&& unzip ${ZIP_FILE} \
&& rm ${ZIP_FILE} 

COPY application.properties application.properties

COPY wait-for-it.sh ./wait-for-it.sh

RUN chmod +x ./wait-for-it.sh

ENTRYPOINT ["java","-jar","${JAR_FILE}"]