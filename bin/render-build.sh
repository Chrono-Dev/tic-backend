#!/usr/bin/env bash
# exit on error
set -o errexit

# Instala as dependências
bundle install

bundle exec rake db:create
bundle exec rake db:schema:load
bundle exec rake db:schema:load