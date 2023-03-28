source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.1"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "pg"
gem "puma", "~> 5.0"

# Assets
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "requestjs-rails"
gem "sassc-rails"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
# gem "mini_magick"

# Utilities
gem "authentication-zero"
# gem "marginalia"
# gem "valid_email2"
# gem 'httparty'
# gem 'active_hash'
# gem "countries"
# gem "statesman"
# gem "pundit"
# gem "pagy", "~> 5.10" # pagination
# gem "discard", "~> 1.2"

group :staging, :production do
  gem "aws-sdk-s3"
  gem "lograge"
end

group :development, :test do
  gem "debug", platforms: [:mri, :mingw, :x64_mingw]
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "brakeman" # security tests https://github.com/presidentbeef/brakeman
  gem "dotenv-rails"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "premailer-rails"
end

group :development do
  gem "amazing_print"
  gem "letter_opener"
  gem "annotate", "~> 3.2"

  # linting
  gem "rubocop", require: false
  gem "rubocop-shopify", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "erb_lint", require: false

  gem "pry"
  gem "pry-rails"
  gem "better_errors"
  gem "binding_of_caller"
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
  gem "spring"
  gem "spring-commands-rspec"
  gem "bullet"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"
