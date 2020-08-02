FROM ruby:2.4.5

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get update -qq && apt-get install -y build-essential nodejs
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
#  yarnパッケージ管理ツール
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn
# Node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install nodejs

RUN yarn add node-sass
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app