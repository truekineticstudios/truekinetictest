#!/bin/bash
set -e

# Start the API server in the background
PORT=3000 node_modules/.bin/tsx api-server/src/index.ts &
API_PID=$!

# Start the frontend (blocks)
PORT=5000 BASE_PATH=/ node_modules/.bin/vite --config vite.config.ts --host 0.0.0.0

# If frontend exits, kill the API
kill $API_PID 2>/dev/null || true
