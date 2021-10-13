FROM ibmcom/ace:latest

USER root

RUN echo mqm:passw0rd | chpasswd
COPY mqsc/* /etc/mqm/.
COPY */home/aceuser/bars
COPY */home/aceuser/bars

RUN su - mqm -c 'ace_compile_bars.sh'

USER mqm
