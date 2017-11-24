FROM mysql:5.7
COPY ./provision.sh ./docker-entrypoint-initdb.d
