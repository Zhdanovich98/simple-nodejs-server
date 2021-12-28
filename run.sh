#!/bin/sh

until [ $(curl --write-out "%{local_ip}" "http://postgres:5432" --output /dev/null --silent) ]; do
    printf '.'
    sleep 3
done

echo 'Postgres run!'
node /usr/src/app/app.js
