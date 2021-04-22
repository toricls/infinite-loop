#!/usr/bin/env sh

trap Bye 15 # SIGTERM

Bye() {
    echo "Stopping container..."
    sleep 1
    exit 0
}

echo "Starting infinite loop"
while true
do
  sleep 1
done
