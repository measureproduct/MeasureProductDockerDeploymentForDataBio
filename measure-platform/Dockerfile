FROM openjdk:8-jre-alpine

#ENV JHIPSTER_SLEEP 0

RUN wget https://github.com/ITEA3-Measure/MeasurePlatform/releases/download/0.9.00/MeasurePlatform-0.9.zip \
&& unzip MeasurePlatform-0.9.zip \
&& rm MeasurePlatform-0.9.zip 

COPY application.properties application.properties

COPY wait-for-it.sh wait-for-it.sh

RUN chmod +x wait-for-it.sh

# Run jar
#RUN sh -c 'touch /measure-platform-0.9.0.war'
#VOLUME /tmp

EXPOSE 8080

#CMD echo "The application will start in ${JHIPSTER_SLEEP}s..." && sleep 10
#    java -Djava.security.egd=file:/dev/./urandom -jar /app.war

ENTRYPOINT ["java","-jar","measure-platform-0.9.0.war"]
