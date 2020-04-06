#!/usr/bin/env bash

docker run -it                         \
           -p 3306:3306                \
           --name dev_mysql            \
           --env-file ./.env.dev       \
           -v "$PWD"/db:/var/lib/mysql \
           -—max_allowed_packet=256M \
           --rm seancannon/dev_mysql
