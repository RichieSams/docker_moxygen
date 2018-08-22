#!/bin/sh
set -e

case "$1" in 
	sh)
		shift
		/bin/sh
		;;
	pingtest)
		exec /bin/ping -c 10 8.8.8.8
		;;
esac

exec "$@"
