#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install

# Se você estiver usando um tipo de instância Free, você precisa
# realizar as migrações de banco de dados no comando de build.
# Descomente a linha a seguir se necessário:

# bundle exec rails db:migrate