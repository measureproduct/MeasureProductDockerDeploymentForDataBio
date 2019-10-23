#FROM openjdk:8-jre-alpine
FROM ubuntu:18.04

LABEL description="Image with Hawk Server"

WORKDIR /home

# The Host IP address
ENV HOST_IP_ADDR=127.0.0.1
# Hawk packaging
ENV ZIP_URL=https://github.com/mondo-project/mondo-hawk/releases/download/v1.2.0-rc3/hawk-server-nogpl_20190202170100-linux.gtk.x86_64.zip
ENV ZIP_FILE=hawk-server-nogpl_20190202170100-linux.gtk.x86_64.zip

# Hawk config
ENV HAWK_PORT=8089
ENV HAWK_INSTANCES_HOST_PATH=./hawk-instances
# must add a volume at this path when running the image
ENV HAWK_INSTANCES_CONTAINER_PATH=/home/hawk-instances

RUN \
    apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y \
                        openjdk-8-jre \
                        wget \
                        unzip \
    && rm -rf /var/lib/apt/lists/* 


RUN wget ${ZIP_URL} \
&& unzip ${ZIP_FILE} \
&& rm ${ZIP_FILE} 

COPY ./metamodels/ /home/hawk-server-nogpl_20190202170100/metamodels/
COPY ./copy-hawk-instances.sh /home/
COPY ./mondo-server.ini /home/hawk-server-nogpl_20190202170100/

# Default command.
CMD ./copy-hawk-instances.sh \
&& cd ./hawk-server-nogpl_20190202170100 \
&& ./run-server.sh