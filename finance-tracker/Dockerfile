FROM ruby:2.5-alpine
RUN apk add --update build-base postgresql-dev tzdata nodejs
RUN gem install rails -v '5.2'
WORKDIR /app
# RUN chmod 771 /app
ADD Gemfile Gemfile.lock /app/

RUN bundle install