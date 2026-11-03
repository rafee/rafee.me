#!/usr/bin/env bash
set -e

echo "=== Cloudflare Pages Build Script for rafee.me ==="

# 1. Ensure submodules are initialized and updated
echo "Fetching Git submodules..."
git submodule update --init --recursive

# 2. Check current Hugo version
REQUIRED_VERSION="0.158.0"
LATEST_HUGO="0.169.0"

CURRENT_VERSION="0.0.0"
if command -v hugo >/dev/null 2>&1; then
    CURRENT_VERSION=$(hugo version | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -n1 | sed 's/v//')
    echo "Found system Hugo version: $CURRENT_VERSION"
else
    echo "Hugo is not present in PATH."
fi

# Compare version against PaperMod's minimum required version
HUGO_BIN="hugo"
if [ "$CURRENT_VERSION" = "0.0.0" ] || [ "$(printf '%s\n' "$REQUIRED_VERSION" "$CURRENT_VERSION" | sort -V | head -n1)" != "$REQUIRED_VERSION" ]; then
    echo "Notice: System Hugo ($CURRENT_VERSION) is older than minimum $REQUIRED_VERSION required by PaperMod."
    echo "Downloading Hugo Extended v${LATEST_HUGO} for Linux amd64..."
    
    mkdir -p /tmp/hugo_bin
    curl -sL "https://github.com/gohugoio/hugo/releases/download/v${LATEST_HUGO}/hugo_extended_${LATEST_HUGO}_linux-amd64.tar.gz" -o /tmp/hugo_bin/hugo.tar.gz
    tar -xzf /tmp/hugo_bin/hugo.tar.gz -C /tmp/hugo_bin/ hugo
    chmod +x /tmp/hugo_bin/hugo
    HUGO_BIN="/tmp/hugo_bin/hugo"
    echo "Successfully downloaded and verified $("$HUGO_BIN" version)"
fi

# 3. Run Hugo build with garbage collection and minification
echo "Building static site with $HUGO_BIN..."
"$HUGO_BIN" --gc --minify

echo "=== Build completed successfully. Static output in public/ ==="
