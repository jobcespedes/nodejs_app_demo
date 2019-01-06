#!/bin/bash
TYPE=$1
NAME=$2
STATE=$3
case $STATE in
        "MASTER") /usr/sbin/service haproxy restart
                  ;;
        "BACKUP") /usr/sbin/service haproxy stop
                  ;;
        "FAULT")  /usr/sbin/service haproxy stop
                  exit 0
                  ;;
        *)        /usr/bin/logger "haproxy unknown state"
                  exit 1
                  ;;
esac
