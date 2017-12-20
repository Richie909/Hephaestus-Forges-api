FROM ruby:2.3.5-alpine

# Update and install deps
RUN apk add --update make g++ mysql-dev tzdata bash

# Create directory to live in
RUN mkdir -p /home/app/api

# Make that the active directory
WORKDIR /home/app/api

# Add gemfiles first for caching
ADD Gemfile .
ADD Gemfile.lock .

# Install deps
RUN bundle install

# Add project to directory
ADD . .

EXPOSE 3000

CMD bundle exec puma