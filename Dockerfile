FROM ibmcom/ace:latest

USER root



COPY *.sh /usr/local/bin/



RUN chmod +x /usr/local/bin/*.sh

# Always use port 1414 (the Docker administrator can re-map ports at runtime)
# Expose port 9443 for the web console
EXPOSE 1414 9443

ENV LANG=en_US.UTF-8

ENTRYPOINT ["mq.sh"]
