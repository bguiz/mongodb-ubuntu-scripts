#!/bin/bash

echo "Removing socket file"
sudo rm /tmp/mongodb-27017.sock
echo "Removing lock file"
sudo rm /var/lib/mongodb/mongod.lock
echo "Running repair task"
sudo -u mongodb mongod --repair
echo "Starting mongo daemon"
sudo service mongo start
