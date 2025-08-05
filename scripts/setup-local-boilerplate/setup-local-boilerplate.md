# 🚀 Setup: Create Your Own Local SaaS Project

This script helps you create a clean, new local project using the `SaaS-boilerplate` structure — perfect for solo devs, small teams, or mentoring sessions.

---

- Copies the full boilerplate repo into a new folder (you choose the name)
- Removes the Git history so you're not tied to the original repo
- Initializes a fresh Git project
- Copies `.env.example` to `.env` for quick configuration
- ✅ **Auto-installs the pre-commit hook for secret protection**

---

## 📂 Location

This script is located at:

```
scripts/setup-local-boilerplate/setup-local-boilerplate.sh
```

---

## ⚙️ How to Use It

To clone this boilerplate for reuse on multiple projects:

First, open your VS Code bash terminal and choose where you want your project folder to live (e.g. Desktop, Documents, etc.)

```bash
cd ~/Desktop  # or wherever you will keep your projects
```

Clone my SaaS-boilerplate and keep it as a local-boilerplate for future use or reference.

```bash
git clone https://github.com/Goldielockz30/SaaS-boilerplate.git local-boilerplate            # Edit the name eg. loacl-boilerplate
cd local-boilerplate
```

Use a **bash** terminal to run the following setup script!

```bash
cd ~/Desktop/local-boilerplate
bash scripts/setup-local-boilerplate/setup-local-boilerplate.sh
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
