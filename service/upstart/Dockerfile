FROM ubuntu-upstart:trusty

RUN apt-get update -y
RUN apt-get install -y mysql-server
RUN apt-get install -y nginx
RUN apt-get install -y mongodb

ENV TERM screen-256color

EXPOSE 3306 80 27017
RUN echo "Hello, upstart!" > /usr/share/nginx/html/index.html
