FROM docker.elastic.co/kibana/kibana:6.5.4

ENV SERVER_HOST 0.0.0.0
ENV ELASTICSEARCH_URL http://elasticsearch:9200

COPY kibana.yml ./config/kibana.yml

EXPOSE 5601