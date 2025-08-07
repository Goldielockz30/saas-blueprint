# 🧱 Tech Stack – SaaS Boilerplate

## 🚀 Overview

This project is a DevSecOps-ready SaaS boilerplate designed for tech founders, indie hackers, and teams who want to launch securely and fast.

---

## 🧩 Stack Breakdown

### 🧠 Backend

- **Language**: Python 3.11
- **Framework**: FastAPI
- **Database**: PostgreSQL (hosted via Supabase)
- **ORM**: SQLAlchemy
- **Auth**: Supabase (JWT or OAuth2)
- **Secrets Management**: `.env` (root) + Doppler (optional)

### 🌐 Frontend

- **Framework**: Next.js (React 18)
- **Styling**: Tailwind CSS (planned)
- **Auth**: Cookie-based or JWT (Synced with backend)
- **Secrets Management**: `.env.local` + Doppler (optional)

### 💳 Payments

- **Provider**: Stripe (GBP support)
- **Billing**: Tiered pricing, 7-day trial (Pro)

### 📦 DevOps / Infra

- **Containerization**: Docker
- **Orchestration**: `docker-compose`
- **CI/CD**: GitHub Actions
- **Pre-commit Hooks**: YAML + Bash
- **Secrets Template**: `.env.example` (root)

### 📁 Folder Structure

See `docs/folder-structure.md`

---

## 🛡️ Security

- `.env` files are gitignored and never committed
- A pre-commit hook blocks OpenAI keys and other secrets
- Doppler is the primary secret manager across environments
- For local fallback, we encrypt `.env` into `.env.enc` and delete the original
- At runtime, the app decrypts `.env.enc` in memory — nothing is written to disk
- Frontend secrets live in `.env.local` (for client-side use)
- GitHub Actions are configured with secret masking

---

## 🔭 Planned Features (in active roadmap)

- Supabase email login (Postmark optional)
- Advanced structured logging (Logtail or Sentry)
- Stripe and GitHub webhook integrations

---

## 📍 Status

This stack is under active development and updated continuously.
