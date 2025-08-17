#!/bin/bash

# 🔐 Pre-commit Hook: Blocks commits of sensitive config files

sensitive_files=(
  ".env"
  ".env.enc"
  "backend/secrets.toml"
  "frontend/.env.local"
)

staged_files=$(git diff --cached --name-only)
blocked=false

for file in $staged_files; do
  for sensitive in "${sensitive_files[@]}"; do
    if [[ "$file" == "$sensitive" ]]; then
      echo "❌ BLOCKED: Do not commit '$file'"
      blocked=true
    fi
  done
done

if [[ "$blocked" == true ]]; then
  echo "🛑 Commit aborted to protect secrets."
  exit 1
fi

exit 0
