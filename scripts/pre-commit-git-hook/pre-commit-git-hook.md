# 🔐 Commit Protection: Block Secrets From Being Pushed

This project includes a **pre-commit hook system** that automatically blocks you from committing sensitive files like:

- `.env`
- `frontend/.env.local`
- `backend/secrets.toml`
- `.vscode/launch.json`
- and more...

This protects you from accidentally pushing API keys (like `sk-...`) or internal configs to GitHub.

---

## ✅ Already Activated for You

This boilerplate includes automated setup as long as you cloned it using the instructions in the GitHub README.

So you're good to go —
the secret protection hook (activate-pre-commit) has already been installed behind the scenes.

No extra steps needed.

---

## ⚙️ WSL Setup for Windows Users (Required for Secret Blocker)

If you're on **Windows**, the Secrets Commit Blocker hook requires **WSL (Windows Subsystem for Linux)** to run properly.

Without it, you’ll get an error like:

```bash
Windows Subsystem for Linux has no installed distributions.
```

### 🛠 One-time setup:

1. **Open PowerShell as Administrator**, then run:

   ```powershell
   wsl --install
   ```

2. Wait for it to finish installing.

   > 📝 **Note:** You _might_ be prompted to restart your PC, but most systems **don’t require a restart**. If it asks, go ahead — otherwise, you can continue.

3. WSL will launch and ask for a username/password (just choose anything — it's only for WSL).

✅ WSL is now ready, and you're back in your main terminal.

---

### 🔁 Return to PowerShell

After the WSL setup completes:

1. **Close the WSL terminal window** if it's still open.
2. **Reopen PowerShell (not WSL)**.
3. Navigate back to your project folder:

   ```powershell
   cd ~/Desktop/saas-starter
   ```

Now you're ready to continue.

## 🧪 Want to Test It?

Try staging a secret manually:

```bash
echo "OPENAI_API_KEY=sk-test123" > .env
git add -f .env
git commit -m "Test commit"
```

You should see:

```text
✅ **Expected output:**

text
Block Secret Keys......................................Failed
- hook id: block-secrets
- exit code: 1

❌ Secrets detected in .env. Commit blocked.
```

---

## 🛠️ Hook Not Triggering?

If `.env` was already committed before, Git may ignore changes. Fix it like this:

```bash
git reset .env && rm .env
echo "OPENAI_API_KEY=sk-test123" > .env
git add -f .env
git commit -m "Retest secret hook"
```

✅ If you saw this commit get blocked — congratulations!
Your secret protection system is now active and working exactly as expected.
You’re now protected from accidentally leaking critical files like .env or API keys.

---

## 🔄 Stop Tracking `.env` but Keep It Locally

```bash
git rm --cached .env
git commit -m "Untrack .env after test"
```

---

### 👤 Created by Nana E. A. Johnson

Tech Founder & Secure Systems Architect | [@Goldielockz](https://www.instagram.com/goldielockz)

---
