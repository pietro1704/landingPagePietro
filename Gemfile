source 'https://rubygems.org'

# Github gem source (latest)
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.3'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1'

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'propshaft'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', git: 'https://github.com/puma/puma.git'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'cssbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing'

# Add Pagination
gem 'pagy', '~> 7'

gem 'ransack', '~> 4.1'

group :production do
  # Use pg as the database for Active Record
  gem 'pg', '~> 1.1'
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  gem 'sqlite3'

  # Debugger
  # gem 'debase', '~> 0.2.4', require: false
  # gem 'ruby-debug-ide', '~> 0.7.3', require: false

  # Security Tools
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'ruby_audit'

  # Linting
  gem 'rubocop'
  gem 'rubocop-capybara'
  gem 'rubocop-rails'
end

group :development do
  gem 'devise', '~> 4.9', require: false
  gem 'htmlbeautifier', '~> 1.4', require: false
  gem 'solargraph', '~> 0.50.0', require: false

  gem 'gem-ctags', require: false

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler'

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem 'spring'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'

  gem 'simplecov', '~> 0.22.0', require: false
end
