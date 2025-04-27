#!/bin/bash

echo "📦 Building static site from src/ to docs/ using Docker..."
docker run --rm -v "$(pwd)":/srv/jekyll jekyll/builder:latest jekyll build --source src --destination docs

if [ $? -eq 0 ]; then
  echo "✅ Build successful! Static files are ready in /docs"
else
  echo "❌ Build failed! Check the errors above."
fi
