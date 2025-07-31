#!/usr/bin/env bash
# --------------------------------------------
# 🔐 Auto-activate Pre-commit Secret Protection
# --------------------------------------------

echo "🔐 Activating pre-commit secret protection..."

# Make sure the hook script is executable
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/pre-commit-git-hook.sh"


# Clean and install the hook system
pre-commit clean
pre-commit install
pre-commit autoupdate

echo "✅ Pre-commit hook installed and updated"
