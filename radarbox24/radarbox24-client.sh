#!/bin/bash

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

exec /usr/bin/rbfeeder \
  --setkey ${RADARBOX24_KEY} \
  --set-network-mode on \
  --set-network-host $(getent hosts ${DUMP1090_SERVER} | head -n 1 | awk '{print $1}') \
  --set-network-port ${DUMP1090_PORT} \
  --set-network-protocol ${DUMP1090_PROTOCOL} \
  ${@}
