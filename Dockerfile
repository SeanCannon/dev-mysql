FROM mysql:8
COPY ./provision.sh ./docker-entrypoint-initdb.d
