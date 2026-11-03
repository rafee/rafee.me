#!/usr/bin/env bash
set -e

echo "=== Cloudflare Pages Build Script for rafee.me (Astro) ==="

export ASTRO_TELEMETRY_DISABLED=1

# Check Node.js version
if command -v node >/dev/null 2>&1; then
    echo "Found Node.js version: $(node -v)"
fi

echo "Installing project dependencies..."
npm ci || npm install

echo "Building static site with Astro..."
npm run build

echo "=== Build completed successfully. Static output in dist/ ==="
