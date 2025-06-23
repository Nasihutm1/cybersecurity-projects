#!/bin/bash
# Audit Google Drive file permissions (requires gdrive CLI)

if [ -z "$1" ]; then
  echo "Usage: $0 <file_id>"
  exit 1
fi

gdrive permissions list "$1"