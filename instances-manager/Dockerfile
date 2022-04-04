FROM openjdk:11
WORKDIR /usr/ui-proxy
EXPOSE 33332
COPY build/libs/instances-manager-latest-all.jar /instances-manager/
CMD ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005", "-XX:MaxRAMPercentage=85", "-cp", "/instances-manager/instances-manager-latest-all.jar", "org.modelix.instancesmanager.Main"]