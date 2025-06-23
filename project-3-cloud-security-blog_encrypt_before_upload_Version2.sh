#!/bin/bash
# Encrypt files before uploading to the cloud

# Usage: ./encrypt_before_upload.sh <file>
FILE="$1"
if [ -z "$FILE" ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

# Encrypt with 7z (password prompt)
7z a -p -mhe "${FILE}.7z" "$FILE"

echo "Encrypted file created: ${FILE}.7z"