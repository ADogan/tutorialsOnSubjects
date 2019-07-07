FROM open-liberty:microProfile2
ADD target/teacherseverywhere.tar.gz /opt/ol
ADD target/teacherseverywhere.war /opt/ol/wlp/usr/servers/defaultServer/dropins

USER default
EXPOSE 9080 9443