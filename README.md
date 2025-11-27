# Minecraft

This repository contains a fully containerized Minecraft Java Edition server environment. The goal of the project is to build a custom Docker image without using prebuilt Minecraft images and to run the server using Docker Compose. The project fulfills all checklist requirements, including documentation, reproducible setup, environment‑based configuration, and data persistence.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Quickstart](#Quickstart)
- [Usage](#Usage)

## Prerequisites

- Docker engine
- Docker compose
- Java Minecraft Server JAR

## Quickstart

- Clone the repository

```bash
git clone https://github.com/FlyingChris1/Minecraft.git
cd Minecraft
```
- Create Docker Image

```bash
docker build -t mc-image .
```

- Start Docker compose 

```bash
docker compose up -d
```

- access the Minecraft server with your client

```bash
<your IP>:8888
```

## Usage

- restart Container

```bash
docker compose restart
```

- stop Container

```bash
docker compose down -v
```

- Enter Minecraft Container

```bash
docker compose exec -it mc-server bash
```

- Get Docker Compose logs

```bash
docker compose logs
```