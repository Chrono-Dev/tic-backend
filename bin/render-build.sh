#!/usr/bin/env bash
# exit on error
set -o errexit

# Instala as dependências
bundle install

# Realiza as migrações do banco de dados
bundle exec rails db:migrate RAILS_ENV=production

# Inicia o servidor
bundle exec puma -t 5:5 -p ${PORT:-3000} -e production