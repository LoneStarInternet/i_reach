source "https://rubygems.org"

# Declare your gem's dependencies in i_reach.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gem 'dotenv-rails', :require => 'dotenv/rails-now'
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"
gem "devise"
gem 'jquery-ui-rails'
gem "delayed_job_web"

# Testing Gems
gem "sqlite3"
gem 'pry-rails'
gem 'delayed_job_active_record'
gem 'spring'
gem 'puma'
gem 'quiet_assets'
gem 'spring-commands-rspec'
gem 'spring-commands-cucumber'

group :test, :development do
  gem 'foreman'
  gem "factory_girl_rails", "~>4.3"
  gem "faker"
  gem 'post_office'
end

# Testing Gems
group :test do
  gem 'simplecov', require: false
  gem "rspec-rails", "~>3.2"
  gem "rspec-activemodel-mocks"
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'cucumber-rails', require: false
end

# required for tests... can be used to look at mail with a mail client without real smtp
group :post_office do
  gem 'dotenv'
  gem 'post_office'
end

# Set gems for local testing
if ENV['MAIL_MANAGER_GEM_PATH']
  gem 'mail_manager', path: ENV['MAIL_MANAGER_GEM_PATH']
else
  gem 'mail_manager', "~>3.2"
end
if ENV['NEWSLETTER_GEM_PATH']
  gem 'newsletter', path: ENV['NEWSLETTER_GEM_PATH']
else
  gem 'newsletter', "~>3.2"
end

# To use debugger
# gem 'debugger'
