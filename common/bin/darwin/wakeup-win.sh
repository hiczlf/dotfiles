#!/usr/bin/env bash
set -euo pipefail

MAC="58:47:CA:79:83:69"
HOST="win-dev"
PORT="22"
TIMEOUT=10

wakeonlan "$MAC"

echo "waiting for ssh..."

start_time=$(date +%s)

while true; do
  if nc -z "$HOST" "$PORT" >/dev/null 2>&1; then
    echo "windows is ready"
    exit 0
  fi

  now=$(date +%s)
  elapsed=$((now - start_time))

  if [ "$elapsed" -ge "$TIMEOUT" ]; then
    echo "wake failed: ${HOST}:${PORT} is still unreachable after ${TIMEOUT}s"
    exit 1
  fi

  sleep 2
done
