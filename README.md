# NekoMania420's Containerized Minecraft Server

A mini project for running Minecraft server easily and easy to manage.

## Usage

1. Copy `.env.example` to `.env` and edit
2. If you want to override docker-compose.yml, create [docker-compose.override.yml](https://docs.docker.com/compose/extends/#understanding-multiple-compose-files) and add your configuration.
3. Create a directory to store server files based on `SERVER_VOLUME` in `.env`.
4. Run `docker-compose up -d`
    * To stop, run `docker-compose stop`
    * If `.env` has been changed, you must run `docker-compose down` and then `docker-compose up -d --build`
