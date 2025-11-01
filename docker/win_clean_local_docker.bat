@echo off

echo Начинаем очистку

cd "$(dirname "$0")/.."

docker-compose down --rmi local -v
@REM docker rmi postgres:16-alpine

echo Локальные контейнеры и образы удалены
pause