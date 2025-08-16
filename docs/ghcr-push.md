# 📦 ghcr-push.sh

This script builds and pushes the backend Docker image to **GitHub Container Registry (GHCR)**.

---

## 🧠 What It Does

- Uses your GitHub username and repo to tag the backend image
- Logs into GHCR using a GitHub Personal Access Token (`GHCR_PAT`)
- Pushes the image for use in Railway or other container-based hosting

---

## ✅ Requirements

- Docker installed locally
- You are logged in to `ghcr.io`
- `.env` must contain:
  - `GHCR_PAT`
  - `GITHUB_USERNAME`
  - `GITHUB_REPO`

---

## ▶️ Open a bash terminal and run:

```bash
bash infra/deploy/ghcr-push.sh
```

⚠️ Note: The `ghcr-push` script is currently a placeholder and does not contain functional code. You will need to create or customize this script to fit your project’s deployment workflow.
