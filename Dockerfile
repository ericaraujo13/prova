FROM ruby:3.2.2

ENV RAILS_ENV production
ENV SECRET_KEY_BASE dummy

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm libvips postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app

RUN npm i && bundle exec rails assets:precompile

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]