# Auto Generated Dockerfile
FROM ballerina/jvm-runtime:1.0

COPY hello_world_service.jar /home/ballerina/jars/ 
# Create and set a non-root user
RUN addgroup --gid 10014 updates && \
    adduser  --disabled-password  --no-create-home --uid 10014 --ingroup updates updatesuser

USER 10014

WORKDIR /home/ballerina

CMD java -Xdiag -cp "sanjula-hello_world_service-0.1.0.jar:jars/*" 'sanjula.hello_world_service.0.$_init'