#!/bin/bash

HOSTS_FILE="/etc/hosts"
MAPPING="127.0.0.1 dev.local"

# Check if the mapping already exists
if ! grep -q "$MAPPING" "$HOSTS_FILE"; then
  echo "Adding $MAPPING to $HOSTS_FILE"
  # Append the mapping to the hosts file
  echo "$MAPPING" | sudo tee -a "$HOSTS_FILE" > /dev/null
else
  echo "$MAPPING already exists in $HOSTS_FILE"
fi