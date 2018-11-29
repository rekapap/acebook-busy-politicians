build:
  languages:
    - ruby
run:
  rake: bundle exec rake
  rails: rails db:create
  rails: rails db:migrate
  web: bundle exec puma config.ru -p $PORT
