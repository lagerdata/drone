#!/bin/sh

wget -q --header "Authorization: Secret $LAGER_AUTH_TOKEN" --header "Host: $LAGER_HOST" -O - $LAGER_CONTAINER_REGISTRATION_URL
exec /bin/drone-server
