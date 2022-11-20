#!/bin/sh

[ -z "${container+x}" ] || exit 0
[ -r /usr/lib/cryptsetup/cryptdisks-functions ] || exit 0

. /usr/lib/cryptsetup/cryptdisks-functions

INITSTATE="$1"

case "$2" in
    start) do_start ;;
    stop) do_stop ;;
    *) exit 1 ;;
esac