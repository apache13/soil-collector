FROM ruby:3.2.2-slim-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev curl

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -

RUN apt-get install -y nodejs

RUN npm install --global yarn

WORKDIR /app/soil

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

ADD . /app/soil

RUN rails RAILS_ENV=production assets:precompile

EXPOSE 3000

CMD [ "bundle","exec", "puma", "config.ru"]