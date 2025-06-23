#!/bin/bash

# Local Jekyll development server script
# This script sets up and serves the Jekyll site locally

echo "🚀 Starting Jekyll development server..."

# Check if bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "❌ Bundler not found. Installing..."
    gem install bundler
fi

# Install dependencies if Gemfile.lock doesn't exist
if [ ! -f "Gemfile.lock" ]; then
    echo "📦 Installing Jekyll dependencies..."
    bundle install
fi

# Serve the site with live reload
echo "🌐 Serving site at http://localhost:4000"
echo "📝 Site will auto-reload when files change"
echo "🛑 Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --config _config.yml,_config_dev.yml --livereload --open-url 