# Boilerplate para Docker + Nginx + Certbot/Let's Encrypt



## Como configurar seu servidor ?

- instale o Docker
- crie uma rede Docker chamada `frontend` -> `docker network create frontend`
- faça o clone do projeto
- 

## Atualize o arquivo site.conf

No arquivo `site.conf` é onde ficará a configuração das rotas do seu site/api.

## Comando para criar o SSL
```
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ --email email@email.com --agree-tos --no-eff-email -d seusite.com.br -d www.seusite.com.br
```



## Crontab para renovar SSL

Abra o terminal e digite: `crontab -e`

Copie a linha abaixo e cole no terminal do Crontab. A linha abaixo está renovando o SSL todo dia 10

```
0 0 10 */2 * /bin/bash /opt/projects/nginx/renew.sh
```

Feche e salve.