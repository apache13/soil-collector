FROM ruby:3.2.2-slim-bullseye as builder

ENV NODE_MAJOR=18

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev ca-certificates curl gnupg; \
    mkdir -p /etc/apt/keyrings; \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key \
     | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg; \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" \
     > /etc/apt/sources.list.d/nodesource.list; \
    apt-get update; \
    apt-get install nodejs -y;

RUN npm install --global yarn

WORKDIR /app/soil

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

ADD . /app/soil

RUN rails RAILS_ENV=production assets:precompile

FROM ruby:3.2.2-slim-bullseye as production

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev

COPY --from=builder /app /app

WORKDIR /app/soil

RUN bundle install

EXPOSE 3000

CMD [ "bundle","exec", "puma", "config.ru"]