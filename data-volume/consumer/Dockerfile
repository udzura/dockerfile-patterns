FROM ruby:2.0.0-p598

RUN mkdir /data
ADD ./app.rb /root/app.rb
WORKDIR /root
RUN gem install sinatra
CMD ruby app.rb -o 0.0.0.0 -p $PORT
