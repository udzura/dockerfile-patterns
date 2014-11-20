FROM ubuntu:trusty

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd

RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/UsePam yes/UsePam no/' /etc/ssh/sshd_config

RUN apt-get install -y mongodb
RUN mkdir /var/spool/mongodb

ADD ./wrapper.sh /usr/local/bin/wrapper.sh
RUN chmod a+x /usr/local/bin/wrapper.sh

EXPOSE 22
EXPOSE 27017

CMD /usr/local/bin/wrapper.sh
