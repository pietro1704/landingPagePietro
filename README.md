[![Ruby on Rails CI](https://github.com/pietro1704/landingPagePietro/actions/workflows/rubyonrailsci.yml/badge.svg?event=push)](https://github.com/pietro1704/landingPagePietro/actions/workflows/rubyonrailsci.yml)

## Runtime

Use the exact Ruby version in `.tool-versions` (currently 4.0.7). The Gemfile
reads that pin directly. Node 26.13.0 and Yarn 4.18.1 match the shared Arch
toolchain; `packageManager` records the Yarn release and installs use node_modules.
With mise configured, run `bundle install` and `yarn install --immutable`.

Run `bundle exec rails test`, `bundle exec rubocop`, `bundle exec bundle-audit
check --update`, and `bundle exec brakeman -q -w2` before submitting changes.
The Rails CI also prepares an isolated PostgreSQL database and compiles assets.
Selenium manages its own driver; the obsolete webdrivers gem is not required.
Ruby 4 compatibility uses the refreshed lockfile, including Rails 8.1 and Devise 5.
Malformed post payloads return HTTP 400 without creating a post.
