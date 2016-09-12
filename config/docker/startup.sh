#!/bin/bash

set -e 

bundle install

sleep 20

rails db:create db:migrate

exec bundle exec rackup -E $RAILS_ENV