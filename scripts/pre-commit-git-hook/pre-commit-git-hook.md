# 🔐 Commit Protection: Block Secrets From Being Pushed

To prevent accidentally committing sensitive information like OpenAI keys (sk-...) or secret config files (.env, secrets.toml), this project includes a pre-commit hook script (pre-commit-git-hook.sh).

This script automatically scans your staged changes before each commit and blocks the commit if any secrets are detected.

## 🚀 Setup Instructions

Move into your new project folder:

```bash
cd new-project
```

## Enable the secret-blocking script:

### 💻 Use bash terminal, Git Bash or WSL for this part:

```bash
# 1. Navigate to your project directory
cd new-project

# 2. Make the script executable
chmod +x scripts/pre-commit-git-hook/pre-commit-git-hook.sh

```

### Install the pre-commit hook system, run these in (PowerShell or Bash — both work):

```bash
pre-commit clean
pre-commit install
pre-commit autoupdate
```

### 🧪 Final Check (Just to Confirm Everything) use powershell or bash terminal.

Let’s test your custom secret-blocking pre-commit hook:

```powershell
# 1. Add a fake OpenAI key to your .env file
echo "OPENAI_API_KEY=sk-test123" > .env

# 2. Force stage it (because .env is ignored by .gitignore)
git add -f .env

# 3. Try to commit and trigger the pre-commit hook
git commit -m "Pre-commit hook test"
```

### ❗ Troubleshooting: Hook Doesn’t Trigger?

If your `.env` was tracked or committed previously, Git might ignore changes. Run:

```bash
git reset .env && rm .env
```

```bash
# Then recreate and test again:
echo "OPENAI_API_KEY=sk-test123" > .env
git add -f .env
git commit -m "Pre-commit hook test"
```

✅ **Expected output:**

```text
Block Secret Keys......................................Failed
- hook id: block-secrets
- exit code: 1

❌ Secrets detected in .env. Commit blocked.
```

This confirms your Secrets key protection is working correctly.

### Stop tracking .env but keep it locally

```bash
git rm --cached .env
```

### Commit the removal

```bash
git commit -m "Untrack .env after test"
```

---

### 👤 Created by Nana E. A. Johnson

Tech Founder & Secure Systems Architect | [@Goldielockz](https://github.com/goldielockz30)
