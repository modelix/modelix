FROM cloudmps-ui
WORKDIR /usr/cloudmps-ui

COPY build/artifacts/de.q60.mps.web.samples.entities/de.q60.mps.web.samples.entities.zip /usr/cloudmps-ui/tmp.zip
RUN unzip /usr/cloudmps-ui/tmp.zip -d /usr/cloudmps-ui/mps/plugins/ && rm /usr/cloudmps-ui/tmp.zip
