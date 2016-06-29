#!/usr/bin/env bash

pkill -1 flexget > /dev/null 2>&1

rm -f /root/.flexget/.config-lock && \
    /usr/local/bin/flexget --loglevel info daemon start
