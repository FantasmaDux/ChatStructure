#!/bin/bash

# IMAGE="networking-application"
# CONTAINER="pong_micro"

# echo "start building image..."
# docker build -t $IMAGE .

# echo "Run container..."
# docker run -d -p 8080:8080 -p 8081:8081 --name $CONTAINER $IMAGE 
echo "Запускаем докер. Врум врум"

cd "$(dirname "$0")/.."

docker compose up --build 

echo "Докер остановлен успешно"
