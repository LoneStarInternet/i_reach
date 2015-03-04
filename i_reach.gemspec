$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "i_reach/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "i_reach"
  s.version     = IReach::VERSION
  s.authors     = ["Christopher Hauboldt", "Ken Biggs"]
  s.email       = ["chauboldt@lone-star.net"]
  s.homepage    = "http://lone-star.net"
  s.licenses    = ['MIT']
  s.summary     = "Newsletter and Mailing List manager"
  s.description = "Combines the 'newsletter' and 'mail_manager' gems with viable admin, login and navigation."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency 'jquery-rails', "~>3.1"
  s.add_dependency 'jquery-ui-rails', "~>5.0"
  s.add_dependency 'jquery-ui-themes', "~>0.0"
  s.add_dependency "mail_manager", "~>3.0"
  s.add_dependency "newsletter", "~>3.0"
  s.add_dependency 'cancancan', '~>1.9'
  s.add_development_dependency "mysql2", "~>0.3"
end
