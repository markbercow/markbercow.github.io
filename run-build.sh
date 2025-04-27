#!/bin/bash

echo "📦 Building static site from src/ to docs/ using Docker..."

# Step 1: Run the Jekyll build
docker run --rm -v "$(pwd)":/srv/jekyll jekyll/builder:latest jekyll build --source src --destination docs

# Step 2: Check if build succeeded
if [ $? -eq 0 ]; then
  echo "✅ Build successful! Static files are ready in /docs."

  # Step 3: Copy _config.yml to docs/
  echo "📝 Copying _config.yml for GitHub Pages..."
  cp src/_config.yml docs/_config.yml

  # Step 4: Verify CNAME exists
  if [ -f src/CNAME ]; then
    echo "🌐 Copying CNAME for custom domain..."
    cp src/CNAME docs/CNAME
  else
    echo "⚠️  WARNING: src/CNAME not found! Your custom domain may break if you publish without it."
  fi

else
  echo "❌ Build failed! Check the errors above."
fi
