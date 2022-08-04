source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('./.ruby-version')

gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "kredis"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
#gem "image_processing", "~> 1.2"
gem "devise", "~> 4.8"
gem 'simple_form'
gem 'rails-admin', '~> 0.0.0'
gem 'cancancan'
gem 'pundit'
gem 'draper'
gem 'activeadmin'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
end

group :development do
  gem "web-console"
  gem 'annotate', '~> 3.2'
  gem "rack-mini-profiler"
  gem "spring"
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'binding_of_caller' 
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end


