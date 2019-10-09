FROM openjdk:8

WORKDIR /home

RUN wget https://github.com/measureproduct/QualityGuard/releases/download/v1.2.0/quality-guard-v1.2.0.zip \
&& unzip quality-guard-v1.2.0.zip \
&& rm quality-guard-v1.2.0.zip

COPY application.properties application.properties

COPY wait-for-it.sh ./wait-for-it.sh

RUN chmod +x ./wait-for-it.sh

EXPOSE 8085

ENTRYPOINT ["java","-jar","quality-guard-analysis-1.2.0.war"]