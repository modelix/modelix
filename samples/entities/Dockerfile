FROM modelix/modelix-ui
WORKDIR /usr/modelix-ui

COPY build/artifacts/org.modelix.samples.entities/org.modelix.samples.entities.zip /usr/modelix-ui/tmp.zip
RUN unzip /usr/modelix-ui/tmp.zip -d /usr/modelix-ui/mps/plugins/ && rm /usr/modelix-ui/tmp.zip
