#!/bin/bash

# دریافت هدر Authorization
HEADER=$(echo $1 | awk -F "Authorization: " '{print $2}')
EXPECTED_TOKEN="deadhandman"

if [[ "$HEADER" == "$EXPECTED_TOKEN" ]]; then
  exit 0  # اجازه دسترسی
else
  exit 1  # رد درخواست
fi
