#!/bin/bash
set -e

if [ "$ENV" = 'DEV' ]; then
  echo "Running Development Server" # Запуск сервера для разработки
  exec python "identidoc.py"
else
  echo "Running Production Server" # Запуск сервера для эксплуатации
  exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/identidoc.py \
             --callable app --stats 0.0.0.0:9191
fi
