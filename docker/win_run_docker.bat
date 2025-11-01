@echo off
echo Запускаем докер. Врум врум

cd "$(dirname "$0")/.."

docker-compose -f docker-compose.yaml up --build

pause