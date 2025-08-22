#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------
# Push Docker image to GitHub Container Registry (GHCR)
# ------------------------------------------

# Usage:
#   bash infra/deploy/ghcr-push.sh <image-name> <tag>
#
# Example:
#   bash infra/deploy/ghcr-push.sh backend v1.0.0
#
# This will create and push:
#   ghcr.io/<GITHUB_USER>/<repo>-backend:v1.0.0
#
# Pre-req:
#   1. Run `echo $GHCR_PAT | docker login ghcr.io -u USERNAME --password-stdin`
#   2. Replace USERNAME with your GitHub username (e.g., goldielockz30)
#   3. Make sure GHCR_PAT has `write:packages` + `read:packages` scopes
# ------------------------------------------

if [ $# -lt 2 ]; then
  echo "❌ Usage: $0 <image-name> <tag>"
  exit 1
fi

IMAGE_NAME=$1
TAG=$2

# GitHub org/user and repo name (auto-detect from git)
GITHUB_USER=$(git config user.name | tr '[:upper:]' '[:lower:]' | tr -d ' ')
REPO_NAME=$(basename -s .git "$(git config --get remote.origin.url)")

# Fallback if user detection fails
: "${GITHUB_USER:=your-github-username}"

FULL_IMAGE="ghcr.io/${GITHUB_USER}/${REPO_NAME}-${IMAGE_NAME}:${TAG}"

echo "📦 Building Docker image: $FULL_IMAGE"
docker build -f infra/docker/Dockerfile.${IMAGE_NAME} -t "$FULL_IMAGE" .

echo "🚀 Pushing to GHCR..."
docker push "$FULL_IMAGE"

echo "✅ Done! Image available at: $FULL_IMAGE"