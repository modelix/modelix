FROM openjdk:11
WORKDIR /usr/modelix-model
EXPOSE 28101
COPY run-model-server.sh /usr/modelix-model/
COPY build/ /usr/modelix-model/model-server/build/
CMD ["./run-model-server.sh"]