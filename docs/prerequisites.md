# 🛠 Your Journey to Secure SaaS Architect Starts Here

Your first step toward building secure, scalable software — the right way. This guide is beginner-friendly and written clearly for those who need extra detail.

---

## 🔧 Prerequisites

- VS Code (recommended)
- Python 3.11.9
- Node.js 18+
- Docker + Docker Compose
- Git + GitHub

---

## 💻 FOR WINDOWS USERS

### 🔹 1. Install Visual Studio Code (VS Code)

#### ✅ Step-by-step:

1. Visit 👉 [https://code.visualstudio.com](https://code.visualstudio.com)
2. Click **"Download for Windows"**
3. Run the installer `.exe`
4. ✅ Check these options:
   - "Add to PATH"
   - "Open with Code"
5. Finish install and open VS Code (blue `<>` icon)

#### 🧙 Install Recommended Extensions:

1. Click the **square icon** on the left (Extensions tab)
2. Search and install each of these:
   - ✅ Python (by Microsoft)
   - ✅ Docker (by Microsoft)
   - ✅ ESLint
   - ✅ Prettier - Code formatter

---

### 🔹 2. Install Python 3.11+

#### ✅ Step-by-step:

1. Visit 👉 [https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/)
2. Click the **yellow "Download Python 3.11.9" button**. [Download Windows installer (64-bit)](https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe)
3. Run the `.exe` file.
4. At the bottom of the installer:
   - ✅ **Check the box: "Add Python 3.11.9 to PATH"**
5. Click **Install Now** → wait → click **Close** when done.

#### 🧶 Verify:

Open `cmd` (Windows key + R → type `cmd`):

```bash
python --version   # Windows
```

✅ You should see something like `Python 3.10.x`

---

### 🔹 3. Install Node.js 18+

#### ✅ Step-by-step:

1. Go to 👉 [https://nodejs.org/en](https://nodejs.org/en)
2. Click green **"Download for Windows (18.x.x LTS)"**
3. Run the `.msi` file → accept all defaults → Install

#### 🧶 Verify:

Open `cmd`:

```bash
node -v            # Windows
npm -v             # Windows
```

✅ You should see versions like `v18.x.x`, `8.x.x`

---

### 🔹 4. Install Docker + Docker Compose

#### ✅ Step-by-step:

1. Go to 👉 [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)
2. Click **"Download for Windows"**
3. Run the `.exe` file
4. Accept all options → Install → Restart computer if prompted

#### 🧶 Verify:

Open `cmd`:

```bash
docker -v          # Windows
docker-compose -v  # Windows
```

✅ You should see Docker version numbers

---

## 🍎 FOR MAC USERS

### 🔹 1. Install Visual Studio Code (VS Code)

#### ✅ Step-by-step:

1. Go to 👉 [https://code.visualstudio.com](https://code.visualstudio.com)
2. Click **“Download for macOS”**
3. Open the `.zip` → Drag `Visual Studio Code` into **Applications**
4. Open from Launchpad or Spotlight (⌘ + Space)

#### 🧙 Install Recommended Extensions:

1. Click the **square icon** on the left (Extensions tab)
2. Search and install:
   - ✅ Python
   - ✅ Docker
   - ✅ ESLint
   - ✅ Prettier
   - ✅ Jupyter (optional)

---

### 🔹 2. Install Python 3.10+

#### ✅ Step-by-step:

1. Visit 👉 [https://www.python.org/downloads/mac-osx/](https://www.python.org/downloads/mac-osx/)
2. Click **“macOS 64-bit universal2 installer”**
3. Run the `.pkg` file → click **Continue → Install → Close**

#### 🧶 Verify:

Open **Terminal** (⌘ + Space → type `Terminal`):

```bash
python3 --version  # Mac
```

✅ You should see `Python 3.10.x`

> 🔹 On Mac, use `python3` instead of `python`

---

### 🔹 3. Install Node.js 18+

#### ✅ Step-by-step:

1. Visit 👉 [https://nodejs.org/en](https://nodejs.org/en)
2. Click **"Download for macOS (18.x.x LTS)"**
3. Run the `.pkg` file → Install → Done

#### 🧶 Verify:

In Terminal:

```bash
node -v            # Mac
npm -v             # Mac
```

✅ You should see version numbers

---

### 🔹 4. Install Docker + Docker Compose

#### ✅ Step-by-step:

1. Go to 👉 [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)
2. Download the right version for your Mac:
   - Apple Chip (M1/M2/M3) or Intel (check in  → About This Mac)
3. Run the `.dmg` file → Drag Docker into **Applications**
4. Open Docker from Launchpad or Finder → Applications

#### 🧶 Verify:

Open Terminal:

```bash
docker -v          # Mac
docker-compose -v  # Mac
```

✅ You should see version numbers

---

## Final Step: Check Everything Works

Open your **VS Code PowerShell Terminal (Windows)** or **Terminal (Mac)** and run the appropriate commands:

```bash
# VS Code Terminal (Bash or Command Prompt) – Windows
python --version
node -v
npm -v             # Verify with Bash or CMD
docker -v
docker-compose -v
code --version

# Mac
python3 --version
node -v
npm -v
docker -v
docker-compose -v
code --version
```

✅ If you see version numbers for all, you're ready to go!

---

## 🔙 Bonus: Set Up Git + GitHub (Windows & Mac)

### 🔹 1. Install Git

**Windows:**

1. Go to 👉 [https://git-scm.com/download/win](https://git-scm.com/download/win)
2. Download the `.exe` file → run it
3. Keep all default settings → click **Install**

**Mac:**

1. Open Terminal
2. Run:

```bash
git --version
```

3. If Git is not already installed, your Mac will prompt to install it automatically

---

### 🔹 2. Create a GitHub Account

1. Visit 👉 [https://github.com](https://github.com)
2. Click **Sign up** (top-right corner)
3. Enter your name, email, and password
4. Choose the **Free plan**
5. Confirm your email via inbox

---

### 🔹 3. Configure Git (one-time setup)

Open VS Code PowerShell terminal or CMD and run:

```bash
git config --global user.name "Your Full Name" # Replace with your first and last name"
git config --global user.email "your@email.com" # Replace with your email"
```

---

### 👤 Created by Nana E. A. Johnson

Tech Founder & Secure Systems Architect | [@Goldielockz](https://www.instagram.com/goldielockz)
