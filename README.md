# Ssohrab Borhanian — Jekyll Personal Website

Static single-page personal website built with [Jekyll](https://jekyllrb.com/),
ready to deploy on GitHub Pages with zero extra configuration.

## Directory layout

```
gh_pages_jekyll/
  _config.yml          ← site settings & contact info
  _data/
    cv.yml             ← ALL CV content (edit this to update the site)
  _layouts/
    default.html       ← HTML shell: <head>, nav, footer, script
  index.html           ← page template (Liquid loops over _data/cv.yml)
  assets/
    css/
      style.css        ← stylesheet
  Gemfile              ← Ruby deps for local preview
  .gitignore
```

The key insight: **all your content lives in `_data/cv.yml`**.
To update a job, publication count, skill tag, etc., you only edit that one file.

---

## Local preview

```bash
# 1. Install Ruby gems (first time only)
bundle install

# 2. Serve locally with live reload
bundle exec jekyll serve --livereload

# 3. Open
http://localhost:4000
```

#### Set correct local ruby version
```
# 1. Install rbenv
brew install rbenv ruby-build

# 2. Add rbenv to your shell (once)
rbenv init

# 3. Install a modern Ruby
rbenv install 3.3.6

# 4. Pin that version to this project folder
cd /path/to/gh_pages_jekyll
rbenv local 3.3.6
```

---

## Deploy to GitHub Pages

### Option A — User/org page (recommended, clean URL)

1. Create a repo named **`<your-username>.github.io`** on GitHub.
2. Copy the contents of `gh_pages_jekyll/` into the repo root.
3. In `_config.yml`, set `url: "https://<your-username>.github.io"` and leave `baseurl: ""`.
4. Push to `main`. GitHub Pages will build automatically — no Actions needed.

### Option B — Project page (URL: `username.github.io/repo-name`)

1. Copy files into any repo.
2. In `_config.yml`, set `baseurl: "/repo-name"`.
3. In repo **Settings → Pages**, set Source → Deploy from branch `main`, folder `/` (root)
   (or `/gh_pages_jekyll` if you keep the subfolder structure).

---

## Customisation

| What to change | Where |
|---|---|
| Contact info, social URLs | `_config.yml` → `author:` |
| Hero stat cards | `_config.yml` → `stats:` |
| Bio paragraphs | `_data/cv.yml` → `about:` |
| Jobs / dates | `_data/cv.yml` → `experience:` |
| Projects | `_data/cv.yml` → `projects:` |
| Education | `_data/cv.yml` → `education:` |
| Skills | `_data/cv.yml` → `skills:` |
| Accent colour | `assets/css/style.css` → `--accent` |
| Nav / footer structure | `_layouts/default.html` |
| Section HTML & Liquid loops | `index.html` |
