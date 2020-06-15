FROM cloudmps/cloudmps-ui
WORKDIR /usr/cloudmps-ui

COPY build/artifacts/org.modelix.samples.entities/org.modelix.samples.entities.zip /usr/cloudmps-ui/tmp.zip
RUN unzip /usr/cloudmps-ui/tmp.zip -d /usr/cloudmps-ui/mps/plugins/ && rm /usr/cloudmps-ui/tmp.zip
