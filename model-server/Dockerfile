FROM openjdk:11
WORKDIR /usr/webmps-model
EXPOSE 63320
COPY run-model-server.sh /usr/webmps-model/
COPY build/ /usr/webmps-model/model-server/build/
CMD ["./run-model-server.sh"]