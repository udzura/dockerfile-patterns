FROM ubuntu:trusty
RUN apt-get update -y
RUN apt-get install -y git golang-go

RUN git clone https://gist.github.com/25f6379bc6e57e9adbe0.git /usr/local/src/helloworld
WORKDIR /usr/local/src/helloworld
RUN chmod a+x ./make.sh
RUN mkdir /var/build

CMD ./make.sh
