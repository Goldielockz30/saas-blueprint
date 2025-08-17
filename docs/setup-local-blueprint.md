# 🚀 Setup: Create Your Own Local SaaS Project

This script helps you create a clean, new local project using the `saas-blueprint` structure — perfect for solo devs, small teams, or mentoring sessions.

---

- Copies the full SaaS Blueprint repo into a new folder (you choose the name)
- Removes the Git history so you're not tied to the original repo
- Initializes a fresh Git project
- Copies `.env.example` to `.env` for quick configuration
- ✅ **Auto-installs the pre-commit hook for secret protection**

---

## 📂 Location

This script is located at:

```
scripts/setup-local-blueprint/setup-local-blueprint.sh
```

---

## ⚙️ How to Use It

To clone this boilerplate for reuse on multiple projects:

### 1. Open a WSL Terminal

In VS Code, open the terminal dropdown and select **"WSL: Ubuntu"**.

Create a folder inside your Linux home directory:

```bash
mkdir -p ~/projects
cd ~/projects
```

To check where you are:

```bash
pwd
```

Clone my SaaS blueprint and keep it as a local-blueprint for future use or reference.

```bash
git clone https://github.com/Goldielockz30/saas-blueprint.git saas-template            # Edit the name eg. saas-template
cd saas-template
```

Use a **bash** terminal to run the following setup script!

```bash
cd ~/projects/saas-template
bash scripts/setup-local-blueprint/setup-local-blueprint.sh
```

## ✅ Result

Once complete, you'll have a new folder like:

```
my-saas-app/
├── backend/
├── frontend/
├── infra/
├── .env
├── .git/
└── ...
```

This new folder will be fully detached from the original GitHub repo — ready to build and customize as your own app.

---

## 🙋 Need Help?

I offer hands-on guidance and done-for-you setup services.
DM me on Instagram [@goldielockz](https://instagram.com/goldielockz) to launch faster and safer.
