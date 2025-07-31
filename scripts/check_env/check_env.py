import os
import sys

REQUIRED_KEYS = [
    # Frontend
    "FRONTEND_URL",
    "NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY",
    "MAILERLITE_API_KEY",
    "OPENAI_API_KEY",

    # Backend
    "BACKEND_URL",
    "SUPABASE_URL",
    "SUPABASE_KEY",
    "SUPABASE_JWT_SECRET",
    "STRIPE_SECRET_KEY",
    "STRIPE_WEBHOOK_SECRET",
    "ENVIRONMENT",
    "LOG_LEVEL",
]

def check_env():
    missing = []
    for key in REQUIRED_KEYS:
        if not os.getenv(key):
            missing.append(key)

    if missing:
        print("❌ Missing required environment variables:")
        for key in missing:
            print(f" - {key}")
        sys.exit(1)
    else:
        print("✅ All required environment variables are set.")

if __name__ == "__main__":
    check_env()
