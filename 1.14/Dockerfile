FROM ruby:2.6.0-stretch

WORKDIR /app
COPY rails-example-project .
RUN bundle install 
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs
RUN npm install -g db-migrate
RUN bin/rails db:migrate RAILS_ENV=development
ENTRYPOINT rails s
EXPOSE 3000


