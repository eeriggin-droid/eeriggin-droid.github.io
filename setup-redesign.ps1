# Run this script locally (PowerShell) after installing Git & Node.js

# Initialize git, commit current files, and create redesign branch
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  Write-Host "Git not found. Install Git first: https://git-scm.com/downloads" -ForegroundColor Yellow
  exit 1
}

git init
git add .
git commit -m "chore: import current site"
git checkout -b redesign

# Install node deps
if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
  Write-Host "npm not found. Install Node.js first: https://nodejs.org/" -ForegroundColor Yellow
  exit 1
}

npm install

Write-Host "Setup complete. Run 'npm run start' to preview site locally." -ForegroundColor Green
