#!/usr/bin/env bash
# Script Name: system_greeting.sh
# Description: Recording user, timestamp, and current system location.
# Variables using command substitution
USER_VAR=$(whoami)
HOST_VAR=$(hostname)
DATE_VAR=$(date)
# formatted output
echo "----------------------------------------"
echo "User: $USER_VAR"
echo "Host: $HOST_VAR"
echo "Date: $DATE_VAR"
echo "Location: $PWD"
echo "----------------------------------------"


