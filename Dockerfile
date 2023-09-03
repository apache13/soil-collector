FROM ruby:3.2.2-slim-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /app/soil-collector

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

ADD . /app/soil-collector

EXPOSE 3000

CMD [ "bundle","exec", "puma", "config.ru"]