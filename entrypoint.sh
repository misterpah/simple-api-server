#!/bin/bash
export
MYSQL_TABLE=${MYSQL_TABLE} \
MYSQL_HOST=${MYSQL_HOST} \
MYSQL_USERNAME=${MYSQL_USERNAME} \
MYSQL_PASSWORD=${MYSQL_PASSWORD} \
MYSQL_DATABASE=${MYSQL_DATABASE} \
PORT=${PORT} \
node index.js