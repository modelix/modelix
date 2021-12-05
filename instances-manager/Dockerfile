FROM openjdk:11
WORKDIR /usr/ui-proxy
EXPOSE 33332
COPY build/libs/* /instances-manager/
COPY build/dependencies/* /instances-manager/
CMD ["java","-XX:MaxRAMPercentage=85", "-cp", "/instances-manager/*", "org.modelix.instancesmanager.Main"]