#!/bin/bash

STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://account-service/health)

if [ "$STATUS" != "200" ]; then
  echo "Healthcheck failed"
  exit 1
fi

echo "Application healthy"