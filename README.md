IReach
======

IReach integrates the gems [newsletter](https://github.com/LoneStarInternet/newsletter/) and [mail_manager](https://github.com/LoneStarInternet/mail_manager) into a useable site with administration and useful navigation with little work to get it going.

Requirements
------------

* Rails 3.2.x
* Ruby 1.9.3-x
* [Bundler](http://bundler.io)

Optional Dependencies
---------------------
* [RVM](http://rvm.io)

Installation
-----------
* install rvm/ruby 1.9.3/bundler/rails 3.2.x then run the following or skip ahead to the next step if you already have a rails 3.2.x app  
  * new rails app where you want to not use 'test' and want to use mysql  
  `rails new MyApp -T --skip-bundle -d mysql`  
  * or optionally a default rails app  
  `rails new MyApp`  
  `cd MyApp`

* edit your Gemfile  
  `gem 'i_reach'`
  * uncomment the ruby racer line ... or pick another JS gem   
    `gem 'therubyracer', :platforms => :ruby`  
  * add any other gems you like

* bundle your gems  
  `bundle install`

* configure your database(unless already configured) edit config/database.yml

* NOTE: you may need to prefix everything with `bundle exec` assuming you're using bundler

* create(unless already created) the database
  `rake db:create # this doesn't always work... you may need to use your normal client & set up permissions`  

* configure [mail_manager](https://github.com/LoneStarInternet/mail_manager)
  * generate migrations  
  `rake mail_manager:import_migrations`

  * generate delayed_jobs (this is the only job runner we support right now)  
  `rails g delayed_job:active_record`

  * NOTE: you need to create an email account that will receive bounces from your mailings(and allow POP)... configure in the following file:
  * generate and configure the mail manager settings file at config/mail_manager.yml: (replace table prefix with something... or nothing if you don't want to scope it)  
  `rake mail_manager:default_app_config[table_prefix]`

* configure [newsletter](https://github.com/LoneStarInternet/newsletter)
  * generate migrations  
  `rake newsletter:import_migrations`

  * generate and configure the newsletter settings file at config/newsletter.yml: (replace table prefix with something... or nothing if you don't want to scope it)  
  `rake newsletter:default_app_config[table_prefix]`

* migrate the database
  `rake db:migrate`

* create bounce job to check for emails that have bounced from your mailings  
  `rake mail_manager:create_delayed_jobs`

* mount IReach routes (you can say where by using at: /path) in config/routes.rb   
  `mount IReach::Engine => "/"`  
  `root to: 'i_reach/welcome#index'`  

