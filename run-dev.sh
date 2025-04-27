#!/bin/bash

echo "🚀 Starting local Jekyll development server (Docker Compose)..."

# Try to start normally
docker compose up

# If it fails (non-zero exit code), print a helpful message
if [ $? -ne 0 ]; then
  echo ""
  echo "⚠️  Docker Compose failed to start."
  echo "💡 Tip: Try rebuilding first:"
  echo ""
  echo "    docker compose build"
  echo "    ./run-dev.sh"
  echo ""
fi
