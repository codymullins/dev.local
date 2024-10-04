#!/bin/bash

HOSTS_FILE="/etc/hosts"
MAPPING1="127.0.0.1 dev.local"

# Check if the MAPPING1 already exists
if ! grep -q "$MAPPING1" "$HOSTS_FILE"; then
  echo "Adding $MAPPING1 to $HOSTS_FILE"
  # Append the MAPPING1 to the hosts file
  echo "$MAPPING1" | sudo tee -a "$HOSTS_FILE" > /dev/null
else
  echo "$MAPPING1 already exists in $HOSTS_FILE"
fi

MAPPING2="127.0.0.1 logs.dev.local"

# Check if the MAPPING1 already exists
if ! grep -q "$MAPPING2" "$HOSTS_FILE"; then
  echo "Adding $MAPPING2 to $HOSTS_FILE"
  # Append the MAPPING1 to the hosts file
  echo "$MAPPING2" | sudo tee -a "$HOSTS_FILE" > /dev/null
else
  echo "$MAPPING2 already exists in $HOSTS_FILE"
fi