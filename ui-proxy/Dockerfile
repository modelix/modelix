FROM openjdk:11
WORKDIR /usr/ui-proxy
EXPOSE 33332
COPY build/libs/* /usr/ui-proxy/
COPY build/dependencies/* /usr/ui-proxy/
CMD ["java","-XX:MaxRAMPercentage=85", "-cp", "/usr/ui-proxy/*", "org.modelix.uiproxy.Main"]