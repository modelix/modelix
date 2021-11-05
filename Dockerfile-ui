FROM modelix/modelix-base
WORKDIR /usr/modelix-ui
EXPOSE 33333

#RUN mkdir -p /opt/cprof && \
#  wget -q -O- https://storage.googleapis.com/cloud-profiler/java/latest/profiler_java_agent.tar.gz \
#  | tar xzv -C /opt/cprof

# Uses by run-ui-server to determine how much of the available memory of the container is used for the JVMs heap.
# 85% is the default but for projects with lots of plugins loaded into MPS memory required for classloading is large.
# If lots of memory is allocated for classes the 85% ratio can be to much and the JVM exceeds the memory limit of the
# container. Containers build on top of the modelix container can simply override the ENV and increase the value.
ENV HEAP_RATIO=85

COPY build/org.modelix/build/artifacts/org.modelix/plugins/org.modelix.ui.server /mps-plugins/org.modelix.ui.server
RUN /install-plugins.sh

COPY run-ui-server.sh /usr/modelix-ui
COPY ui-server/build/libs/* /usr/modelix-ui/
COPY ui-server/build/dependencies/ /usr/modelix-ui/dependencies/
CMD ["./run-ui-server.sh"]