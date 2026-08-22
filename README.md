# rezoo.github.io

Personal site for Masaki Saito, built with [Jekyll](https://jekyllrb.com/) on top of
[al-folio](https://github.com/alshedivat/al-folio) v1.2, consumed as a gem
(`al_folio_core`) rather than a forked theme. The site is trimmed down to an About page
and a Blog — the academic-portfolio parts of al-folio (publications, projects, news,
CV) are not used here.

## Directory structure

```
_pages/       Standalone pages (About, Blog index, 404) — one Markdown file per page.
_posts/       Blog entries, one per file, named YYYY-MM-DD-title.md.
_layouts/     Liquid page layouts (default, about, post, page, archive, ...).
_includes/    Liquid partials reused across layouts (header, footer, head, ...).
_sass/        Site-specific SCSS. _site.scss holds this site's overrides on top of
              the al-folio gem's own stylesheets.
_data/        YAML data files (e.g. socials.yml) consumed by includes.
assets/       Images, and the SCSS entrypoint (assets/css/main.scss) that imports
              the gem's styles plus _sass/_site.scss.
_config.yml   Site-wide Jekyll configuration.
.al-folio-overrides.yml
              Tracks which al-folio gem files have been locally overridden, so
              `al-folio upgrade audit` can flag upstream changes that need re-applying.
bin/entry_point.sh
              Startup script used inside the Docker container (see below).
```

Layouts, includes, and most of the styling come from the `al_folio_core` gem; only
files that need a local tweak are overridden here and tracked in
`.al-folio-overrides.yml`.

## Local development (without Docker)

Requires Ruby 3.3.5, Bundler, and ImageMagick.

```sh
bundle install
bundle exec al-folio upgrade audit   # checks local overrides against the gem's upstream
bundle exec jekyll serve
```

The site is then available at <http://localhost:4000>.

Node.js 22 is used for linting Markdown/Liquid/SCSS with Prettier:

```sh
npm ci
npm run lint:prettier
# or: npm run format   -- to auto-fix
```

To verify a production build:

```sh
JEKYLL_ENV=production bundle exec jekyll build
```

Output is written to `_site/`.

## Local development with Docker Compose

No need to install Ruby or ImageMagick on the host — everything runs inside the
container defined by `Dockerfile` / `docker-compose.yml`.

```sh
docker compose up --build
```

This builds the image, installs any missing bundler gems on first run, and starts
`jekyll serve --watch --livereload` inside the container (see `bin/entry_point.sh`).
The site is then available at <http://localhost:8080>, with live reload on
<http://localhost:35729>. Editing files under the repo (mounted into
`/srv/jekyll`) triggers a rebuild automatically; changes to `_config.yml` restart
the Jekyll process.

If you change `Gemfile` or `Gemfile.lock`, rebuild the image with `--build` again.

## License

See [LICENSE](LICENSE).
