FROM          ubuntu:latest
MAINTAINER    Thiago Zilli Sarmento <thiago.zilli@gmail.com>

#No interactive with frontend
ENV DEBIAN_FRONTEND noninteractive

#eviroment user
ENV USER root

#Set timezone
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list

RUN apt-get update
RUN apt-get install -y vim git curl wget mongodb-org redis-server


RUN mkdir -p /var/scripts_tools
COPY scripts/idle.sh /var/scripts_tools/idle.sh

#Fire application
ENTRYPOINT ["/var/scripts_tools/idle.sh"]
