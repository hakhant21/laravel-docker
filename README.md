
# Documentation For Laravel Docker Project 

 - NGINX
 - MYSQL
 - PHP
 - REDIS
 - MQTT
 - NPM

This project sets up multiple services using Docker, including Nginx, PHP, Composer, Mosquitto (with WebSocket support), and MySQL. It uses a `docker-compose.yml` file to manage the services together and configure them efficiently. Below you will find a breakdown of the project structure, configuration files, and setup instructions.

## Laravel Docker Development Setup

### Prerequisites
- Docker
- Docker Compose

### Installation Steps

1. Clone the repository
```bash
git clone https://github.com/hakhant21/laravel-docker.git

# Navigate to the project directory
cd laravel-docker

# copy .env.example to .env
cp .env.example .env for docker

# update .env file
```

2. Build Docker containers

```bash 
docker-compose build

```

3. Start Docker containers

```bash
docker-compose up -d

```

4. Using Composer Service

```bash
# install dependencies
docker-compose run --rm composer install 

# require dependencies
docker-compose run --rm composer require 
```

5. Using Artisan Service

```bash
# artisan commands
docker-compose run --rm artisan make:

```

6. Using NPM Service

```bash
docker-compose run --rm npm install

```
    