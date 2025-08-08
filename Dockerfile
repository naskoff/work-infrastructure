FROM serversideup/php:8.2-fpm-nginx-alpine

USER root

ARG UID
ARG GID

RUN docker-php-serversideup-set-id www-data $UID:$GID && \
    docker-php-serversideup-set-file-permissions --owner $UID:$GID --service nginx

USER www-data