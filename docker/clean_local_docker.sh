#!/bin/bash
echo "Начинаем очистку"

cd "$(dirname "$0")/.."

docker compose down --rmi local -v
# docker rmi postgres:16-alpine удалять постгре стоит только при смене версии


echo "Очистка завершена"