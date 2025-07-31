### 🧰 Python Environment Setup

Think of venv like your project's private chef — activate it so only your chosen ingredients (packages) are used.

```bash
# One-time setup if PowerShell blocks Activate.ps1
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

# For Windows (cmd or PowerShell)
python -m venv venv
.\venv\Scripts\Activate.ps1

# Then install dependencies
pip install -r requirements.txt

# For macOS / Linux / Git Bash
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Install pre-commit globally
pip install pre-commit

# Upgrade pip if prompted
python -m pip install --upgrade pip

# Installing new packages?
# e.g. pip install python-dotenv
pip freeze > requirements.txt

# Verify your setup
pre-commit --version
# e.g. pre-commit 4.2.0
```

> 🔐 Always activate your Python `.venv` before running python commands — no matter what editor you use.  
> If you're using VS Code, this boilerplate includes settings (`.vscode/settings.json`) to auto-select the right Python interpreter.

---

### 👤 Created by Nana E. A. Johnson

Tech Founder & Secure Systems Architect | [@Goldielockz](https://github.com/goldielockz30)
