FROM open-liberty:microProfile2
ADD target/teacherseverywhere.tar.gz /opt/ol
ADD target/teacherseverywhere.war /opt/ol/wlp/usr/servers/defaultServer/dropins

USER root
RUN apt-get update 
RUN apt-get -y install sudo
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER root

EXPOSE 9080 9443