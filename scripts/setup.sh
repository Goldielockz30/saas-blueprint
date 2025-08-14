#!/usr/bin/env bash
# ./setup.sh — minimal trigger with venv check
set -e

# 1) Always run from repo root
cd -- "$(dirname -- "${BASH_SOURCE[0]}")" || exit 1

# 2) Guard: must be in WSL
grep -qi microsoft /proc/version 2>/dev/null || {
  echo "❌ Run this from the WSL: Ubuntu terminal (not PowerShell)."
  exit 1
}

# 3) Ensure Python venv exists
if [[ ! -d ".venv" ]]; then
  echo "🐍 Creating Python venv..."
  python3 -m venv .venv
fi

# 4) Activate venv & upgrade pip
# shellcheck disable=SC1091
source .venv/bin/activate
python -m pip install --upgrade pip

# 5) Trigger your main setup script
ENTRY="./setup-local-blueprint/setup-local-blueprint.sh"
chmod +x "$ENTRY"
exec "$ENTRY"
