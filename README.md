# 📦 Микросервисная инфраструктура

Этот проект использует **Docker Compose** для запуска нескольких микросервисов за **обратным прокси Traefik v3.4**. Включает:

* Обратный прокси Traefik с дашбордом
* Два микросервиса: `auth-service` и `networking-service`
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

| URL                                                 | Описание                     | Сервис             |
|-----------------------------------------------------|------------------------------|--------------------|
| `http://localhost/auth`                             | Корень API авторизации       | Auth Service       |
| `http://localhost/networking`                       | Корень API Networking        | Networking Service |
| `http://dashboard.localhost`                        | Интерфейс управления Traefik | Traefik Dashboard  |
| `http://localhost/networking/swagger-ui/index.html` | UI документации OpenAPI      | Open API UI        |
| `http://localhost/auth/swagger-ui/index.html`       | UI документации OpenAPI      | Open API UI        |
| `http://localhost/messenger/swagger-ui.html`        | UI документации OpenAPI      | Open API UI        |
| `http://localhost:8089/`                            | Kafka UI                     | Kafka UI           |

> **Данные для входа в Dashboard (Default):** `admin / P@ssw0rd`