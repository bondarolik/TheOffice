# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.2'

# Assets
gem 'importmap-rails'
gem 'requestjs-rails'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tailwindcss-rails'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
# gem "mini_magick"


# https://codewithrails.com/rails-authentication
gem "bcrypt", "~> 3.1.7"
gem 'authentication-zero'
# Use rotp for generating and validating one time passwords [https://github.com/mdp/rotp]
gem "rotp"
# Use rqrcode for creating and rendering QR codes into various formats [https://github.com/whomwah/rqrcode]
gem "rqrcode"

# Utilities
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
  gem 'aws-sdk-s3'
  gem 'lograge'
end

group :development, :test do
  gem 'brakeman' # security tests https://github.com/presidentbeef/brakeman
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'premailer-rails'
  gem 'rspec-rails'
end

group :development do
  gem 'amazing_print'
  gem 'annotate', '~> 3.2'
  gem 'letter_opener'

  # linting
  gem 'erb_lint', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-shopify', require: false

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'listen', '~> 3.3'
  gem 'pry'
  gem 'pry-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

