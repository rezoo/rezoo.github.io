# rezoo.github.io

Masaki Saitoの個人サイトです。Jekyllとal-folio v1.2を使用し、AboutページとBlogに絞った構成にしています。

## Development

Ruby 3.3.5、Bundler、ImageMagickが必要です。

```sh
bundle install
bundle exec al-folio upgrade audit
bundle exec jekyll serve
```

Markdown、Liquid、SCSSの確認にはNode.js 22を使用します。

```sh
npm ci
npm run lint:prettier
```

production buildは次のコマンドで確認できます。

```sh
JEKYLL_ENV=production bundle exec jekyll build
```

## Docker

RubyやImageMagickをホスト側にインストールせず、Docker Composeでも起動できます。

```sh
docker compose up --build
```

起動後は <http://localhost:8080> を開いてください。`Gemfile` または
`Gemfile.lock` を変更した場合は、再度 `--build` を付けて起動します。
