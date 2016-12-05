#!/bin/bash
set -e

if [ "$1" = 'wdt' ]; then
    shift
    exec wdt -directory $WDTDATA "$@"
fi

exec "$@"
