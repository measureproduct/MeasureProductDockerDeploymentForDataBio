FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    JHIPSTER_SLEEP=0 \
    JAVA_OPTS=""

RUN wget https://github.com/ITEA3-Measure/QualityGuardAnalysis/releases/download/1.2.0/quality-guard-analysis-1.2.0.zip \
&& unzip quality-guard-analysis-1.2.0.zip \
&& rm quality-guard-analysis-1.2.0.zip

COPY application.properties application.properties

#COPY wait-for-it.sh ./wait-for-it.sh

#RUN chmod +x ./wait-for-it.sh

#CMD echo "The application will start in ${JHIPSTER_SLEEP}s..." && \
#    sleep ${JHIPSTER_SLEEP} && \
#    java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.war

EXPOSE 8085

ENTRYPOINT ["java","-jar","quality-guard-analysis-1.2.0.war"]