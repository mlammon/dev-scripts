#!/bin/sh

DOMAIN="$(awk '/search/ {print $2}' /etc/resolv.conf)"
exec host -t SRV "_etcd-server-ssl._tcp.$DOMAIN" localhost > /dev/null 2> /dev/null
