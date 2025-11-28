# Repository Guidelines

## Project Structure & Module Organization
- `_pages` for standalone pages, `_posts` for dated blog entries (`YYYY-MM-DD-title.md`), `_projects` and `_news` for curated content.
- `_layouts`, `_includes`, and `_sass` define Liquid templates and styling; reuse existing patterns before adding new ones.
- `assets/` holds images, fonts, JS, and SCSS entrypoints (`assets/css/main.scss`), while `_plugins/` hosts custom Jekyll Ruby helpers.
- `_config.yml` drives site-wide settings; prefer overrides via `_data` and page front matter over editing layouts directly.

## Setup, Build, and Local Development
- Install Ruby + Bundler, then run `bundle install`; install node dev tools with `npm install` for Prettier.
- Local serve with `bundle exec jekyll serve --livereload` (reads `_config.yml` and drafts if `--drafts` is added).
- Production build with `bundle exec jekyll build` (also used by `bin/cibuild`); output lands in `_site/`.
- Docker alternative: `docker-compose up` to build and serve in a containerized environment.

## Coding Style & Naming Conventions
- Use 2-space indentation for Liquid/HTML/SCSS/Markdown; wrap lines reasonably to keep diffs tidy.
- Favor existing includes and layout blocks over raw HTML duplication; keep front matter minimal and structured.
- Naming: posts use date prefixes, pages stay underscored in `_pages/`, assets use kebab-case (`assets/js/copy_code.js`).
- Formatting: run `npx prettier -w "**/*.{md,html,liquid,scss}"` (preconfigured with `@shopify/prettier-plugin-liquid`).

## Testing Guidelines
- Primary check is a clean static build: `bundle exec jekyll build` (or `bin/cibuild`) before pushing.
- For content changes, spot-check rendered pages via `bundle exec jekyll serve` and review console output for Liquid errors or missing assets.

## Commit & Pull Request Guidelines
- Commits: concise, imperative subject lines that describe the change (e.g., `Add talk post`, `Fix navbar spacing`); group related edits together.
- PRs: include a brief summary, highlight affected pages/sections, attach screenshots or links for visual changes, and reference related issues if applicable.
- Keep PRs small and focused; note any config changes (`_config.yml`, `_data/*.yml`) explicitly in the description.
