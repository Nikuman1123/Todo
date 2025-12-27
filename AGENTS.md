# Repository Guidelines

## 1. Agent Behavior Rules (Most Important)

These rules define how Codex should behave when working in this repository.

- All responses must be in Japanese.
- Before making any file changes, clearly explain **what will be changed and why** using bullet points.
- Never run shell commands without explicit approval (e.g., `git`, `npm`, `rm`, `mv`, `sed`).
- Avoid destructive operations (e.g., `rm -rf`, mass deletion, large refactors) unless explicitly requested.
- Prefer minimal diffs and keep existing behavior unchanged unless instructed otherwise.
- If requirements or intent are unclear, ask a short clarifying question before proceeding.

---

## 2. Project Structure & Module Organization

- `index.html`  
  Contains the UI markup and all client-side JavaScript (inline `<script>`).
- `style.css`  
  Holds all styles for layout, themes, and responsive design.
- `docs/`  
  Stores demo images referenced in `README.md`.
- `webfonts/`  
  Contains bundled font assets used by the UI.

When unsure about file placement or structure changes, ask before creating new directories.

---

## 3. Build, Test, and Development Commands

- Open directly in a browser:

  ```bash
  open index.html
  ```

- Optional local server for fetch/CORS parity (approval required):

  ```bash
  python3 -m http.server 8000
  ```

  Then visit:

  ```bash
  http://localhost:8000
  ```

Always explain the purpose and impact of a command before suggesting execution.

---

## 4. Coding Style & Naming Conventions

- Follow the existing style used in the repository.
- Indentation: **2 spaces** for HTML, CSS, and JavaScript.
- JavaScript uses semicolons and `const` / `let`.
- Keep logic in `index.html` unless the file is explicitly split.
- CSS class names use **kebab-case** (e.g., `theme-btn`, `filter-button`).
- Do not reformat, rename, or “clean up” code unless necessary for the task.

Clarity and minimal changes are preferred over stylistic refactoring.

---

## 5. Testing Guidelines (Manual)

- No automated tests are currently implemented.
- Manual verification should cover:
  - Adding, editing, and deleting tasks
  - Filtering and sorting behavior
  - `localStorage` persistence across reloads
  - Theme toggle behavior
  - Responsive layout (mobile and desktop)
  - Weather icons fetched from the Open-Meteo API

Add tests only when explicitly requested or when changes introduce clear risk.

---

## 6. Commit & Pull Request Guidelines

### Commit Messages

This repository follows a **Conventional Commits–style** format.

**Format:**

```text
<type>: <short summary>
```

**Common types:**

- `feat`: A new feature or user-facing behavior change
- `fix`: A bug fix
- `refactor`: Code change that neither fixes a bug nor adds a feature
- `style`: Formatting or UI-only changes (no logic changes)
- `docs`: Documentation-only changes
- `chore`: Maintenance tasks (cleanup, configuration, tooling)

**Guidelines:**

- Use the imperative mood (e.g., “add”, “fix”, “update”).
- Keep the summary concise and specific.
- Write commit messages in English.
- Make commits small and focused on a single concern.

**Examples:**

- `feat: add weather-based icon to task list`
- `fix: prevent iOS input auto-zoom on focus`
- `style: align date and priority inputs on mobile`
- `refactor: simplify task filter logic`
- `docs: update README with local run instructions`

### Pull Requests

- Provide a short description of **what changed** and **why**.
- Include before/after screenshots for UI changes when possible.
- List any manual checks performed (e.g., mobile layout, persistence).

---

## 7. Configuration & Security Notes

- The app uses the Open-Meteo API via a public URL in `index.html`.
- Do not add API keys or secrets.
- User data is stored in `localStorage` only.
- Do not introduce server-side persistence without prior discussion.
