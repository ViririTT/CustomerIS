FROM ibmcom/ace:latest
USER root

RUN echo mqm:passw0rd | chpasswd
COPY mqsc/* /etc/mqm/.
COPY /home/aceuser/ace-server
COPY bars_aceonly /home/aceuser/bars
COPY bars_mq /home/aceuser/bars
RUN su - mqm -c 'ace_compile_bars.sh'
USER mqm
