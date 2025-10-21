#!/bin/bash

# Start Chrome with remote debugging in background
google-chrome --remote-debugging-port=9222 --user-data-dir=/tmp/chrome-profile-stable &

echo "Chrome started with remote debugging on port 9222"
