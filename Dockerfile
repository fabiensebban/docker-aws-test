FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /docker-aws-test
WORKDIR /docker-aws-test
COPY Gemfile /docker-aws-test/Gemfile
COPY Gemfile.lock /docker-aws-test/Gemfile.lock
RUN bundle install
COPY . /docker-aws-test
