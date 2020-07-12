#!/bin/bash

DUMP1090_SERVER=${DUMP1090_SERVER:=dump1090}
DUMP1090_PORT=${DUMP1090_PORT:=30005}

set -o errexit          # Exit on most errors (see the manual)
set -o nounset          # Disallow expansion of unset variables

echo -n "Connecting ${DUMP1090_SERVER} ${DUMP1090_PORT} .."
while true; do
  (</dev/tcp/${DUMP1090_SERVER}/${DUMP1090_PORT}) > /dev/null 2>&1
  if [ "$?" -eq 0 ]; then
    echo " succeeded"
    break
  else
    echo -n "."
    sleep 1
  fi
done

exec modesmixer2 --web 8080 \
            --inConnectId "${DUMP1090_SERVER}:${DUMP1090_PORT}:DUMP1090" \
            --inConnectId "${DUMP1090_SERVER}:30002:DUMP0002" \
            --inConnectId "flightaware:30106:FLTAWARE" \
            --inConnectId "adsbexchange-mlat:30104:ADSBEXCH" \
            --inConnectId "radarbox24-mlat:30104:RADARBOX" \
            --location "${LATITUDE}:${LONGITUDE}" \
            --google-key "${GOOGLE_KEY}" \
            ${@}
