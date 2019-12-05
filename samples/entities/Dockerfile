FROM webmps-ui
WORKDIR /usr/webmps-ui

COPY build/artifacts/de.q60.mps.web.samples.entities/de.q60.mps.web.samples.entities.zip /usr/webmps-ui/tmp.zip
RUN unzip /usr/webmps-ui/tmp.zip -d /usr/webmps-ui/mps/plugins/ && rm /usr/webmps-ui/tmp.zip
