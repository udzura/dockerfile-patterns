FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y wget
RUN apt-get install -y cron munin apache2
RUN sed -i 's/Allow from localhost.*/Require all granted/g' /etc/apache2/conf-enabled/munin.conf
RUN sed -i '/Order allow,deny/d' /etc/apache2/conf-enabled/munin.conf

RUN ( mkdir -p /var/run/munin && chown -R munin:munin /var/run/munin )
ADD wrapper.sh /usr/local/bin/wrapper.sh
RUN chmod a+x /usr/local/bin/wrapper.sh

VOLUME /var/lib/munin
VOLUME /var/log/munin

EXPOSE 80
CMD ["/usr/local/bin/wrapper.sh"]
