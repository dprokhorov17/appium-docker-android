#!/bin/bash

# Start SSH service
sudo service ssh start

# Wait for port 5555 to be opened/forwarded
echo "Waiting for port 5555 to be opened..."
while ! nc -z localhost 5555; do
  sleep 1
done

# Once port 5555 is open, start the Appium script
echo "Port 5555 is open, starting Appium..."
${APP_PATH}/start_appium.sh
