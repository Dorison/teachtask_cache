FROM node:18-alpine as NODE_BUILD
WORKDIR /src
COPY package*.json .
RUN npm install
COPY . .

FROM php:7.4-fpm-alpine AS PHP_PROD
LABEL core=php
WORKDIR /var/www
RUN addgroup --gid 997 ossec
RUN adduser www-data ossec
RUN ln -sf /proc/1/fd/1 /var/log/stream.log
COPY . /var/www
COPY --from=NODE_BUILD /src /src
COPY --from=composer:2.4.1 /usr/bin/composer /usr/local/bin/composer
