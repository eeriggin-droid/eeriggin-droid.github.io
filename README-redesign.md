## Redesign branch & Eleventy scaffold (notes)

What's been done locally in this workspace:
- Backed up existing site to `site-backup-20260202.zip` (if the terminal had `Compress-Archive`).
- Created an Eleventy scaffold: `package.json`, `.eleventy.js`, `src/index.html` (your existing home page), `data/`, `assets/` and `.gitignore`.

Next steps for you (on your machine):
1. Install Git (if not installed): https://git-scm.com/downloads and configure `git config --global user.name "Your Name"` and `git config --global user.email "you@example.com"`.
2. Initialize the repo and create branches locally:
   - git init
   - git add .
   - git commit -m "chore: import current site"
   - git checkout -b redesign
3. Install Node.js (if you don't have it): https://nodejs.org/ and then run:
   - npm install
   - npm run start   # runs Eleventy's dev server
4. Add Garmin data files to `data/` and images to `assets/images/`.
5. When ready, create a remote repository (GitHub) and push your branches. To help with that, a helper script is provided:
   - `scripts/publish.ps1` — run with PowerShell (example): `.\	ools\publish.ps1 -Owner <github-user> -Repo <repo-name> -Public`
   - The script expects `gh` (GitHub CLI) to be installed and authenticated. It will create the GitHub repo, push your code, and the included Actions workflow will build & publish the site on push to `main`.

If you want, I can:
- Add a parser to import Garmin CSV/TCX files into JSON during build
- Create extra pages (Race info, Workouts, Gallery) and small components
- Add styling helper (Tailwind) or a design system if you prefer

Tell me which of the above you'd like me to do next and whether you want me to add a starter page for race info and workout imports.
