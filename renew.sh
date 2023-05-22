#!/bin/bash
cd /opt/projects/nginx
docker compose run --rm certbot_ssl renew
docker compose up -d nginx