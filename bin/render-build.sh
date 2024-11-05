#!/usr/bin/env bash
# exit on error
set -o errexit

# Instala as dependências
bundle install

# Realiza as migrações do banco de dados
rails db:migrate

# Inicia o servidor
bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}