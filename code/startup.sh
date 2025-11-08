#!/bin/bash
# This runs automatically when the container starts

echo "Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs
npm install -g yarn pnpm
chown -R abc:abc /config/.npm /config/workspace || true
echo "✅ Node.js and npm installed"

