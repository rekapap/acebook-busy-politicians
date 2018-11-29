build:
  languages:
    - ruby
release: rake db:migrate
run:
  rake: bundle exec rake
web: bundle exec puma config.ru -p $PORT
