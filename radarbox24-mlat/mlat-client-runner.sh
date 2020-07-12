#!/bin/sh

set -o errexit          # Exit on most errors (see the manual)
#set -o errtrace         # Make sure any error trap is inherited
set -o nounset          # Disallow expansion of unset variables
#set -o pipefail         # Use last non-zero exit code in a pipeline
#set -o xtrace          # Trace the execution of the script (debug)

DUMP1090_SERVER=${DUMP1090_SERVER:=dump1090}
DUMP1090_PORT=${DUMP1090_PORT:=30005}
MLAT_SERVER=${MLAT_SERVER:=feed.adsbexchange.com}
MLAT_SERVER_PORT=${MLAT_SERVER_PORT:=31090}

echo "Waiting for dump1090 to start up"
sleep 5s

echo "Ping test to dump1090"
ping -c 3 "${DUMP1090_SERVER}"


echo "Connecting to ${DUMP1090_SERVER}:${DUMP1090_PORT} to send to ${MLAT_SERVER}:${MLAT_SERVER_PORT}"
mlat-client --input-type 'dump1090' \
            --input-connect "${DUMP1090_SERVER}:${DUMP1090_PORT}" \
            --lat "${LATITUDE}" \
            --lon "${LONGITUDE}" \
            --alt "${ALTITUDE}" \
            --user "${MLAT_CLIENT_USER}" \
            --server "${MLAT_SERVER}:${MLAT_SERVER_PORT}" \
	    --no-udp \
	    --results 'beast,listen,30104' \
            "$@"
