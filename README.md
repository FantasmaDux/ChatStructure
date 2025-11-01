# 📦 Микросервисная инфраструктура

Этот проект использует **Docker Compose** для запуска нескольких микросервисов за **обратным прокси Traefik v3.4**. Включает:

* Обратный прокси Traefik с дашбордом
* Подключены: `auth-service`, `user-service`, `chat-service`, `kafka`
* Базы данных PostgreSQL для каждого сервиса
* Разделённую конфигурацию Traefik (статическая и динамическая)
* Настройки через `.env` для быстрой настройки

---

## 🚀 Как запустить

### 1. Настрой переменные окружения

Создай файл [`.env`](./.env) с переменными (уже добавлены в проект):


### 2. Запусти проект

```bash
docker compose up --build
```

### 🔄 Чтобы перезапустить всё "с нуля":

```bash
docker compose down -v && docker compose up --build
```

---

## 🌐 Доступные эндпоинты

| URL                                           | Описание                     | Сервис            |
|-----------------------------------------------|------------------------------|-------------------|
| `http://localhost/auth`                       | Корень API авторизации       | Auth Service      |
| `http://localhost/user`                       | Корень API user              | User Service      |
| `http://localhost/chat`                       | Корень API chat              | Chat Service      |
| `http://dashboard.localhost`                  | Интерфейс управления Traefik | Traefik Dashboard |
| `http://localhost/user/swagger-ui/index.html` | UI документации OpenAPI      | Open API UI       |
| `http://localhost/auth/swagger-ui/index.html` | UI документации OpenAPI      | Open API UI       |
| `http://localhost/chat/swagger-ui.html`       | UI документации OpenAPI      | Open API UI       |
| `http://localhost/kafka-ui`                   | Kafka UI                     | Kafka UI          |

> **Данные для входа в Dashboard (Default):** `admin / P@ssw0rd`