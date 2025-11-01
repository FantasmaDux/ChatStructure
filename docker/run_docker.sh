#!/bin/bash

echo "Запускаем докер. Врум врум"

cd "$(dirname "$0")/.."

docker compose up --build 

echo "Докер остановлен успешно"
