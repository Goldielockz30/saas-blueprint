# SaaS-Boilerplate

![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)  
![Pre-commit enabled](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)  
![Dockerized](https://img.shields.io/badge/docker-ready-blue?logo=docker)  
![CI optional](https://img.shields.io/badge/CI-GitHub%20Actions%20available%20but%20disabled-lightgrey)

---

## 🏃🏾‍♀️⚡ Fast-Track Your SaaS Development

This **SaaS-Boilerplate** is a clean, minimal, developer-ready starter kit designed to help you launch full-stack SaaS applications quickly and confidently.

It combines:

- **FastAPI backend** with modular, secure API routes
- **Next.js frontend** with React and TypeScript, ready for modern UI development
- **Dockerized infrastructure** for local dev and production parity
- **Pre-configured GitHub Actions workflows** (disabled by default)
- **Essential dev tools** like pre-commit hooks and environment variable management
- **VS Code configuration** for seamless Python interpreter and debugging support

---

## 🔐 Why This Boilerplate Is Valuable

- **Saves Hours of Setup Time:**  
  No need to reinvent the wheel — get a solid folder structure and working environment right away.

- **Flexible and Adaptable:**  
  Use it as a base for any SaaS product — AI tools, analytics dashboards, subscription marketplaces, or custom internal apps.

- **Built for Real Development:**  
  Includes critical tooling, like environment checking scripts and secrets management templates to prevent common security mistakes.

- **Easy to Customize and Extend:**  
  Clean code organization helps you scale your app without messy technical debt.

- **Great for Learning and Collaboration:**  
  Perfect for solo developers, small teams, or mentoring sessions — ideal for learning real-world SaaS development.

---

## 👥 Who Is This For?

- **Developers and Freelancers:**  
  Need a fast, reliable starting point for client projects or side hustles.

- **Small Dev Teams:**  
  Want a shared foundation that enforces best practices and consistency.

- **Students and Learners:**  
  Looking to understand how to structure and build modern SaaS apps.

- **Tech Mentors and Educators:**  
  Need a practical scaffold to teach backend/frontend integration, DevOps basics, and deployment prep.

---

## 🧩 Niches You Can Build With This Boilerplate

This boilerplate is versatile and can serve as the foundation for building and securing apps in niches such as:

- 🤖 AI-powered content creation and automation tools
- 📱 Social media management and analytics dashboards
- 💸 Subscription marketplaces and membership platforms
- 📈 Data analytics and reporting portals
- 🎨 Creator economy platforms with paywalls and content gating
- ⚙️ Internal SaaS tools and client dashboards
- 🩶 NSFW content generators and adult-themed platforms (with customized billing)

---

## 🔧 💻 Minimum Recommended PC Specs for Dev Use

| Component   | Recommended Minimum                           | Notes                                                                         |
| ----------- | --------------------------------------------- | ----------------------------------------------------------------------------- |
| **CPU**     | AMD Ryzen 7 / Intel i7 (12th gen or newer)    | Multithreading for Docker + VS Code                                           |
| **RAM**     | 32GB DDR4                                     | 16GB is okay for frontend-only work, but 32GB is better for Docker + training |
| **Storage** | 1TB NVMe SSD                                  | Fast disk needed for images, builds, and training datasets                    |
| **OS**      | Windows 11 Pro + WSL2 or Linux (Ubuntu 22.04) | Full compatibility with Docker and CLI tools                                  |
| **Display** | 1080p dual-monitor setup                      | Makes dev, testing, and VS Code workflows easier                              |
| **Cooling** | Good airflow or liquid cooling                | If running containers, VMs, or models for long periods                        |

See [`prerequisites.md`](docs/prerequisites.md) for install instructions:

- VS Code (recommended)
- Python 3.11.9
- Node.js 18+ (LTS version, includes npm)
- Docker + Docker Compose
- Git + GitHub account

---

## 🛠️ Getting Started Locally

> 🛠 **Note:** Most of your development work can be done in the default **PowerShell terminal** in VS Code.  
> However, when running `.sh` (Bash) scripts — like the setup script below — make sure to switch to the **Bash terminal** first.  
> You can do this in VS Code by clicking the dropdown in the terminal tab and selecting **"Git Bash"** or **"WSL"**, depending on your setup.

## ⚙️ Quickstart

1. Using VS Code, choose where you want your project folder to live and navigate into that folder (e.g. Desktop, Documents, etc.)

📦 Use a **bash terminal** (e.g. Git Bash, WSL, or the bash shell in VS Code) to run these setup commands.  
You'll return to PowerShell or your usual terminal after the initial setup is complete.

Inside the terminal run:

```bash
cd ~/Desktop
git clone https://github.com/Goldielockz30/saas-boilerplate.git saas-starter
cd saas-starter
```

2. Make sure you're using a **bash** terminal (not PowerShell or CMD). Then run the setup script:

```bash
cd ~/Desktop/saas-starter
bash scripts/setup-local-boilerplate/setup-local-boilerplate.sh
```

💡 Tip: Your terminal location matters. If you’ve opened a new terminal window and it’s not in the project folder, run `pwd` to check your path or manually navigate back with `cd ~/Desktop/saas-starter`

## 🪄 What Happens After You Clone

Cloning this repo using the instructions in my README does more than just download files — it **triggers a smart setup loop** that prepares your environment behind the scenes.

### 🔁 Automation flow:

```text
README instructions (manual)
└──▶ setup-local-boilerplate.sh
     └──▶ activate-pre-commit.sh
           └──▶ pre-commit-git-hook.sh
```

### What this does:

- ✅ Wipes old Git history and sets up a fresh repo just for you
- ✅ Creates your `.env` file automatically from `.env.example`
- ✅ Installs Git hooks to block secrets from being committed
- ✅ Prepares the local workspace for secrets, Docker, and development

You’ll still configure your own credentials and files —  
but the **leak-proof safety system is fully automated** and already active.

3. Review the folder map in [`folder-structure.md`](./docs/folder-structure.md)

4. Manually create any remaining files in the correct folder (particularly the hidden ones):

   ```
   .vscode/launch.json              # eg. In the .vscode folder create a file named launch.json
   frontend/.env.local
   infra/docker/Dockerfile.backend  # eg. In docker folder nested in the infra folder create a file named launch.json
   infra/docker/Dockerfile.frontend
   .env
   ```

5. Your `.env` file has been auto-created from `.env.example`.

   Fill in your real credentials before running the app.

   ⚠️ These values are required for the app to start and connect to its services correctly.

   _(If you're not sure what goes here, feel free to reach out, for now you can continue the steps without real keys.)_

6. Set up your Python virtual environment (`.venv`)  
   → See [`venv-setup.md`](docs/venv-setup.md) for backend setup

7. Navigate into the `frontend/` folder, run `npm install`, then return to your project root:

   ```bash
   cd frontend
   npm install
   cd ..
   ```

   _(Note: `package.json` is currently empty — this is just a scaffold I can help you to build on.)_

8. Start development with Docker, or run backend and frontend separately  
   _(This boilerplate includes setup only — you’ll add your own app logic.)_

9. For detailed setup or questions, contact me [@goldielockz](https://www.instagram.com/goldielockz)

---

## 📂 Project Structure

```
project-root/
├── .github/                   # GitHub Actions workflows (CI/CD)
├── .vscode/                   # VS Code workspace settings and extensions
├── backend/                   # FastAPI app (API, routes, services, models)
├── docs/                      # DevSecOps docs, setup guides, architecture diagrams
├── frontend/                  # Next.js app (UI, components, pages)
├── infra/                     # Dockerfiles, deployment configs
│   ├── docker/                # Dockerfile.backend, Dockerfile.frontend
│   └── deploy/                # GHCR, Railway, CI/CD scripts
├── scripts/                   # CLI tools, setup scripts, automation
├── tests/                     # Project-wide and backend test suites
├── .dockerignore              # Docker ignore rules (controls build context)
├── .env.example               # Template for environment variables
├── .gitignore                 # Git ignore rules (prevents committing secrets, etc.)
├── .pre-commit-config.yaml    # Pre-commit hook setup (includes secret leak blocking + format/lint rules)
├── LICENSE                    # License file (MIT, Apache, or custom)
├── Makefile                   # CLI shortcuts for build, test, format, etc.
└── README.md                  # Project overview and setup instructions
```

See [folder-structure.md](./docs/folder-structure.md) for a full visual breakdown of the repo layout.

---

## 🔐 Why `.env` Is In The Root Folder

The `.env` file contains your project’s environment variables — sensitive information like API keys and secret tokens. Keeping it in the root folder:

- Makes it easy to locate and manage all environment variables in one place
- Ensures backend and frontend parts can access variables as needed
- Allows tools like Docker, FastAPI, and frontend frameworks to load variables automatically

`.env.example` is a template that lists all required environment variables with placeholder values for safe version control. During setup, it is automatically copied to `.env`, where you can replace the placeholders with your actual secrets. The `.env` file (and other sensitive files) is excluded from version control via `.gitignore` to prevent accidental leaks.

---

> 🔐 **Important:** This boilerplate includes a Git hook system that automatically blocks commits containing secrets like `.env`, `.env.local`, or `secrets.toml`.  
> The hook is auto-installed by `activate-pre-commit`, which runs during setup via `setup-local-boilerplate.sh`.

---

## 🤝🏾 Need help building with this?

I offer hands-on guidance to walk you through launching your own app using this boilerplate. I also provide done-for-you services that package your app inside my secure, scalable DevSecOps framework so you can launch faster and safer.

DM me on Instagram [@Goldielockz](https://www.instagram.com/goldielockz) to get started.

---

### 👤 Created by Nana E. A. Johnson

Tech Founder & Secure Systems Architect | [@Goldielockz](https://www.instagram.com/goldielockz)

---
