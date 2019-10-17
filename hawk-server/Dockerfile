#FROM openjdk:8-jre-alpine
FROM ubuntu:18.04

LABEL description="Image with the Hawk Server"

WORKDIR /home

# The Host IP address
ENV HOST_IP_ADDR=127.0.0.1
# Hawk packaging
ENV ZIP_URL=https://github.com/mondo-project/mondo-hawk/releases/download/v1.2.0-rc3/hawk-server-nogpl_20190202170100-linux.gtk.x86_64.zip
ENV ZIP_FILE=hawk-server-nogpl_20190202170100-linux.gtk.x86_64.zip
ENV SCRIPT_FILE=run-server.sh
# Hawk config
ENV HAWK_PORT=8089
ENV HAWK_NAME=DataBioFishery
ENV HAWK_SVN_PATH=https://rd.constellation.modeliosoft.com/svn/0dbe5d64-45fc-46ca-bf33-cbbd98868aee/trunk/model
ENV HAWK_SVN_USER=hawk
ENV HAWK_SVN_PASS=hawk

#ARG version=8u171-1~webupd8~1


RUN \
    apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install -y openjdk-8-jre \
                        curl \
                        wget \
                        unzip \
    && rm -rf /var/lib/apt/lists/* 


#RUN \
#  apt-get update && \
#  apt-get install -y software-properties-common && \
#  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
#  add-apt-repository -y ppa:webupd8team/java && \
#  apt-get update && \
#  apt-get install -y oracle-java8-installer=${version} && \
#  rm -rf /var/lib/apt/lists/* && \
#  rm -rf /var/cache/oracle-jdk8-installer


#RUN apk add --update bash \
#            curl \
#            unzip \
#&& rm -rf /var/cache/apk/*

RUN wget ${ZIP_URL} \
&& unzip ${ZIP_FILE} \
&& rm ${ZIP_FILE} 

#COPY ./run-server.sh ./hawk-server-nogpl_20190202170100/run-server.sh

#RUN chmod +x ./hawk-server-nogpl_20190202170100/run-server.sh && ./hawk-server-nogpl_20190202170100/run-server.sh
CMD cd ./hawk-server-nogpl_20190202170100/ && ./run-server.sh


# Define commonly used JAVA_HOME variable
#ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define default command.
#CMD ["bash"]