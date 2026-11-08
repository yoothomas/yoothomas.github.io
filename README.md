# yoothomas.github.io

A Jekyll site for `yoothomas.com` using the Minima theme. Edit `index.md`, `about.md`, and `projects.md` to update the site. The YAML front matter at the top of each page selects its layout and title. The theme and site settings live in `_config.yml`.

## Preview locally

From the repository root, run `nix develop` to enter the shell with Ruby 3.3 and Bundler. If you already have Ruby 3.3 and Bundler, you can run the commands below directly.

```sh
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll serve
```

Open [http://127.0.0.1:4000](http://127.0.0.1:4000). Jekyll rebuilds the site when you edit a page. Press Ctrl+C to stop the server.

## Deployment

The GitHub Pages workflow builds with Jekyll on pushes to `main` and publishes the generated site. `CNAME` contains the custom domain.
