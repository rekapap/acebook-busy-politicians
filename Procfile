build:
  languages:
    - ruby
web: bundle exec puma config.ru -p $PORT
release: rake db:create; rake db:migrate
run:
  rake: bundle exec rake
