FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ENV RAILS_ROOT /rails_app
RUN mkdir -p $RAILS_ROOT/tmp/pids
WORKDIR $RAILS_ROOT
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
COPY config/docker/startup.sh /opt/startup.sh
RUN bundle install
COPY . .