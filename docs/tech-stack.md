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
- **Secrets Management**: `secrets.toml` + Doppler (optional)

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

- `.env` files gitignored
- Pre-commit hook blocks OpenAI keys and secrets
- Doppler integration supported
- GitHub Actions with secret masking
- Backend secrets are stored in `secrets.toml`, loaded via decryption at runtime
- Frontend secrets live in `.env.local` (for client-side use)

---

## ✅ Future Additions

- Email auth (via Supabase or Postmark)
- Advanced logging
- Webhooks (Stripe + GitHub)

---

## 📍 Status

This stack is under active development and updated continuously.
