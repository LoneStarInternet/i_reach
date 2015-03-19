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

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.
#
#gem 'mail_manager', git: "ssh://git@bender.lnstar.com/var/git/mail_manager.git", branch: "rails3.2.x"
#gem 'newsletter', git: "ssh://git@bender.lnstar.com/var/git/newsletter.git", branch: "rails3.2.x"
gem 'mail_manager', path: "/home/chrisboy/Projects/LSI/mail_manager/"
gem 'newsletter', path: "/home/chrisboy/Projects/LSI/newsletter/"

# To use debugger
# gem 'debugger'
group :post_office do
  gem 'dotenv'
  gem 'post_office'
end

