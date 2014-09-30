IReach
======

IReach integrates the gems [newsletter](https://github.com/LoneStarInternet/newsletter/) and [mail_manager](https://github.com/LoneStarInternet/mail_manager) into a useable site with administration and useful navigation with little work to get it going.

Requirements
------------

* Rails 3.2.x
* Ruby 1.9.3-x

Optional Dependencies
---------------------
* [RVM](http://rvm.io)
* [Bundler](http://bundler.io)

Installation
-----------
* install rvm/ruby 1.9.3/bundler/rails 3.2.x then run the following or skip ahead to the next step if you already have a rails 3.2.x app
  rails new MyApp -T --skip-bundle -d mysql
  cd MyApp

* edit your Gemfile
  gem 'i_reach'

* bundle your gems
  bundle install

* configure [mail_manager](https://github.com/LoneStarInternet/mail_manager/master/README.md)
** generate migrations
  rake mail_manager:import_migrations

** generate delayed_jobs (this is the only job runner we support right now)
  rails g delayed_job:active_record

** configure your database(unless already configured) edit config/database.yml

** create(unless already created) and migrate the database
  rake db:create
  rake db:migrate

* mount IReach routes (you can say where by using at: /path)
  mount IReach::Engine
