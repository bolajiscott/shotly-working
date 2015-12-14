source "https://rubygems.org"
ruby "2.2.3"
# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "4.2.4"
# Use postgresql as the database for Active Record
gem "pg"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.1.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby
# Use jquery as the JavaScript library
gem "jquery-rails"
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"
gem "jquery-turbolinks", "~> 2.1"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"
gem "puma"
gem "bcrypt", ">= 3.1.10"
gem "bcrypt-ruby"
gem "unicorn"
gem "bootstrap-sass", "~> 3.3", ">= 3.3.6"
gem "geocoder", "~> 1.2", ">= 1.2.12"
gem "googlecharts", "~> 1.6", ">= 1.6.12"
gem "figaro", "~> 1.1", ">= 1.1.1"
gem "formtastic", "~> 3.1", ">= 3.1.3"
gem "masonry-rails", "~> 0.2.4"
gem "will_paginate", "~> 3.0.6"
gem "omniauth-facebook", "~> 3.0"
gem "omniauth-google-oauth2"
gem "xml-simple"
gem "coveralls", "~> 0.8.10", require: false
# bundle exec rake doc:rails generates the API under doc/api.
gem "sdoc", "~> 0.4.0", group: :doc

# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use Unicorn as the app server
# gem "unicorn"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

group :development, :test do
  gem "byebug"
  gem "pry"
  gem "rspec-rails"
  gem "pry-rails", "~> 0.3.4"
  gem "factory_girl_rails"
  gem "faker", "~> 1.6", ">= 1.6.1"
  gem "awesome_print"
  gem "phantomjs", require: "phantomjs/poltergeist"
end

group :development do
  gem "web-console", "~> 2.0"
  gem "rails_apps_testing"
  gem "rails_layout", "~> 1.0", ">= 1.0.29"

  gem "spring"
end

group :production do
  gem "rails_12factor"
end

group :test do
  gem "capybara"
  gem "poltergeist"
  gem "database_cleaner"
  gem "launchy"
  gem "selenium-webdriver"
  gem "codeclimate-test-reporter", "~> 0.4.8", require: nil
end
