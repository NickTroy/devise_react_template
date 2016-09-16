FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /PositiveNews
WORKDIR /PositiveNews
ADD Gemfile /PositiveNews/Gemfile
ADD Gemfile.lock /PositiveNews/Gemfile.lock
RUN gem install bundler
RUN bundle install
ADD . /PositiveNews
