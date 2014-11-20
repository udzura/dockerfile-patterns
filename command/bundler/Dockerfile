FROM bradrydzewski/ruby:2.0.0

RUN git clone https://gist.github.com/86e8021eeaaccf100541.git /home/ubuntu/sample-task
WORKDIR /home/ubuntu/sample-task
RUN /home/ubuntu/.rbenv/shims/bundle install --path vendor/bundle

ENTRYPOINT ["/home/ubuntu/.rbenv/shims/bundle", "exec", "rake"]
CMD ["-T"]
