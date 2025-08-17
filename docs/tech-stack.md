# 🧱 Tech Stack – SaaS Boilerplate

## 🚀 Overview
This project is a DevSecOps-ready SaaS boilerplate designed for tech founders, startup builders, and teams who want to launch securely and fast.

---

## 🧩 Stack Breakdown

### 🧠 Backend
- **Language**: Python 3.11
- **Framework**: FastAPI (src layout)
- **Database**: PostgreSQL (Supabase)
- **ORM**: SQLAlchemy + Alembic (migrations)
- **Auth**: **Clerk** (primary) with Supabase RLS integration
- **Secrets Management**: Doppler (primary) + `.env.enc` fallback (runtime decryption in memory)
- **Logging/Monitoring**: Structured JSON logs → Logtail, error tracking via Sentry

### 🌐 Frontend
- **Framework**: Next.js (React 18, App Router)
- **Styling**: Tailwind CSS + shadcn/ui
- **Auth**: **Clerk React SDK** (syncs with backend via JWT/cookies)
- **Secrets Management**: `.env.local` + Doppler (runtime)

### 💳 Payments
- **Provider**: Stripe (GBP support)
- **Billing**: Tiered pricing, 7-day trial (Pro)
- **Webhooks**: Verified via signing secret, logged to Sentry

### 📦 DevOps / Infra
- **Containerization**: Docker
- **Orchestration**: `docker-compose` (dev)
- **CI/CD**: GitHub Actions (lint, tests, build, secret scan)
- **Images**: GHCR (GitHub Container Registry)
- **Deployment**: Railway (from GHCR images)
- **Pre-commit Hooks**: Ruff, Black, YAML lint, **secret blocker** (requires WSL on Windows)
- **Secrets Template**: `.env.example` (root)

---

## 🛡️ Security
- `.env` files are gitignored and never committed
- Pre-commit hook blocks OpenAI keys and other sensitive files
- Doppler is the **source of truth** for secrets across environments
- Local fallback: `.env` → `.env.enc` (encrypted); decrypted **only in memory**
- Frontend secrets live in `.env.local` (client-safe only)
- GitHub Actions use secret masking + least privilege tokens
- Clerk handles secure auth flows (passwordless/email/Social SSO)

---

## 🔭 Planned Features (in active roadmap)
- Supabase email login with Postmark templates (secondary auth flow)
- Stripe and GitHub webhook integrations (full replay/testing harness)
- Advanced observability dashboards (Sentry + Logtail)

---

## 📍 Status
This stack is under active development and updated continuously.
