#!/usr/bin/env bash
set -euo pipefail

WINDOWS_USER="lf"
WINDOWS_HOST="win-dev"

REMOTE_DIR="/d/BaiduNetdiskDownload/"
LOCAL_DIR="$HOME/data/baidu-disk/"

mkdir -p "$LOCAL_DIR"

rsync -avh --progress \
  --delete \
  -e "ssh" \
  "${WINDOWS_USER}@${WINDOWS_HOST}:${REMOTE_DIR}" \
  "$LOCAL_DIR"
