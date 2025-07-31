#!/usr/bin/env bash
# --------------------------------------------
# Setup Script: Local SaaS Boilerplate Starter
# For use *after cloning* the repo
# --------------------------------------------

echo "🔧 SaaS Boilerplate Setup Started"

# Get the repo root
REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT" || exit 1

# Clean up Git history
echo "🧼 Removing Git history..."
rm -rf .git

# Reinitialize Git
echo "🌱 Initializing new Git repo..."
git init
git add .
git commit -m "Initial commit from SaaS boilerplate"

# Create .env from .env.example
if [[ -f ".env.example" ]]; then
  cp .env.example .env
  echo "✅ .env file created from .env.example"
fi

echo ""
echo "🎉 Setup complete!"
echo "🛠️  You're ready to start building in: $REPO_ROOT"
exit 0
