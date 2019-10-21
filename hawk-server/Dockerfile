#FROM openjdk:8-jre-alpine
FROM ubuntu:18.04

LABEL description="Image with Hawk Server"

WORKDIR /home

# The Host IP address
ENV HOST_IP_ADDR=127.0.0.1
# Hawk packaging
ENV ZIP_URL=https://github.com/mondo-project/mondo-hawk/releases/download/v1.2.0-rc3/hawk-server-nogpl_20190202170100-linux.gtk.x86_64.zip
ENV ZIP_FILE=hawk-server-nogpl_20190202170100-linux.gtk.x86_64.zip
#ENV SCRIPT_FILE=run-server.sh
# Hawk config
ENV HAWK_PORT=8089
ENV HAWK_NAME=DataBioFishery
ENV HAWK_SVN_PATH=https://rd.constellation.modeliosoft.com/svn/0dbe5d64-45fc-46ca-bf33-cbbd98868aee/trunk/model
ENV HAWK_SVN_USER=hawk
ENV HAWK_SVN_PASS=hawk
ENV METAMODEL_DESCRIPTOR_FILE=metamodel_descriptor_36.xml

#ARG HAWK_INSTANCES_DIRECTORY=./hawk-instances/

RUN \
    apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y \
                        openjdk-8-jre \
#                        curl \
                        wget \
                        unzip \
    && rm -rf /var/lib/apt/lists/* 


RUN wget ${ZIP_URL} \
&& unzip ${ZIP_FILE} \
&& rm ${ZIP_FILE} 

#COPY ./run-server.sh ./hawk-server-nogpl_20190202170100/run-server.sh
#COPY ./databio-fishery.xml ./hawk-server-nogpl_20190202170100/configuration/
#ADD ${HAWK_INSTANCES_DIRECTORY} ./hawk-server-nogpl_20190202170100/configuration/
COPY ./metamodels/ ./hawk-server-nogpl_20190202170100/metamodels/
COPY ./hawk-instances/* ./hawk-server-nogpl_20190202170100/configuration/
COPY ./mondo-server.ini ./hawk-server-nogpl_20190202170100/

#CMD ls /home/hawk-instances/
#CMD cp /home/hawk-instances/* ./hawk-server-nogpl_20190202170100/configuration/

#RUN chmod +x ./hawk-server-nogpl_20190202170100/run-server.sh && ./hawk-server-nogpl_20190202170100/run-server.sh
#CMD cd ./hawk-server-nogpl_20190202170100/ && ./run-server.sh


# Define commonly used JAVA_HOME variable
#ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define default command.
#CMD ["bash"]
CMD cd ./hawk-server-nogpl_20190202170100 && ./run-server.sh