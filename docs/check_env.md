# ✅ check_env.py

This script checks your environment setup by verifying that all **required `.env` variables** are set.

---

## 🧠 What It Does

- Reads key environment variables
- Alerts you if any required keys are missing
- Prevents app crashes due to missing config

---

## 🔐 Required Keys Checked

FRONTEND_URL
NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY
MAILERLITE_API_KEY
OPENAI_API_KEY

BACKEND_URL
SUPABASE_URL
SUPABASE_KEY
SUPABASE_JWT_SECRET
STRIPE_SECRET_KEY
STRIPE_WEBHOOK_SECRET
ENVIRONMENT
LOG_LEVEL

## ✅ How to Use

```bash
# 1. Copy the template .env file
cp env.example .env

# 2. Fill in your real credentials inside the new .env file

# 3. Run the environment checker
python scripts/check_env/check_env.py

# If all keys are present, you'll see:
# ✅ All required environment variables are set.

# If something is missing, you'll see:
# ❌ Missing required environment variables:
#  - SUPABASE_KEY
#  - STRIPE_SECRET_KEY
#  - ...
```

> 🧠 Note: This script assumes your Python environment is activated (`.venv`) and dependencies are installed. See the README.md file for setup instructions.

---

### 👤 Created by Nana E. A. Johnson

Tech Founder & Secure Systems Architect | [@Goldielockz](https://www.instagram.com/goldielockz)
