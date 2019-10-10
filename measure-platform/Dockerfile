FROM openjdk:8

WORKDIR /home

RUN wget https://github.com/measureproduct/MeasurePlatform/releases/download/MeasurePlatform/MeasurePlatform.V1.0.0.zip \
&& unzip MeasurePlatform.V1.0.0.zip \
&& rm MeasurePlatform.V1.0.0.zip 

COPY application.properties ./application.properties

COPY wait-for-it.sh ./wait-for-it.sh
RUN chmod +x ./wait-for-it.sh

COPY startup.sh ./startup.sh
RUN chmod +x ./startup.sh && ./startup.sh

EXPOSE 8080

ENTRYPOINT ["java","-jar","./measure-platform-1.0.0.war"]
