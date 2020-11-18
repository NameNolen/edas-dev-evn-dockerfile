FROM openjdk:8
ADD edas-config-center.zip /usr/src/
WORKDIR /usr/src
RUN ["unzip", "edas-config-center"]
ADD startup.sh /usr/src/edas-config-center/
EXPOSE 8080
WORKDIR /usr/src/edas-config-center
#RUN rm startup.bat
ENTRYPOINT  ["sh","/usr/src/edas-config-center/startup.sh"]
#RUN  ls