#!/bin/bash
if systemctl is-active --quiet technitium.service; then

  if host example.com 127.0.0.1 > /dev/null 2>&1; then
     exit 0 # Healthy
  else
     exit 1 # Unhealthy - DNS query failed
  fi
  : # Proceed to final success exit
else
  exit 1
fi

exit 0
