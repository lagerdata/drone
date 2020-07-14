#!/bin/sh

wget -q --header "Authorization: Secret $LAGER_AUTH_TOKEN" --header "Host: $LAGER_HOST" -O - $LAGER_CONTAINER_REGISTRATION_URL 2&>/dev/null > /dev/null && exec /bin/drone-server
