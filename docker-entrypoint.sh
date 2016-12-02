#!/bin/bash
set -e

if [ "$1" = 'wdt' ]; then
    exec wdt -directory $WDTDATA "$@"
fi

exec "$@"