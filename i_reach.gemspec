$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "i_reach/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "i_reach"
  s.version     = IReach::VERSION
  s.authors     = ["Christopher Hauboldt"]
  s.email       = ["chauboldt@lone-star.net"]
  s.homepage    = "http://lone-star.net"
  s.summary     = "Newsletter and Mailing List manager"
  s.description = "Combines the 'newsletter' and 'mail_manager' gems with viable admin, login and navigation."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.19"
  #s.add_dependency "mail_manager"
  #s.add_dependency "newsletter"
  s.add_development_dependency "mysql2"
end
