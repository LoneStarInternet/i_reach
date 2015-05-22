$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "i_reach/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "i_reach"
  s.version     = IReach::VERSION
  s.authors     = ['Lone Star Internet', "Christopher Hauboldt"]
  s.email       = ['biz@lone-star.net', "chauboldt@lone-star.net"]
  s.homepage    = "http://ireachnews.com"
  s.licenses    = ['MIT']
  s.summary     = "Newsletter and Mailing List manager"
  s.description = "Combines the 'newsletter' and 'mail_manager' gems with viable admin, login and navigation."
  s.post_install_message = <<-EOT
    *** IREACH ****
    Added 'Style Sheet' text area to newsletter design.
      **This allows us to properly trigger viewport for mobile window size in newsletter editor.
      
    ** Required Actions ( pre 3.2.7 ) **
    Please move your inline styles to the new 'Style Sheet' text area in the newsletter design editor.

    ** Required Actions for every upgrade **
    rake i_reach:upgrade # this adds any new migrations and migrates your DB ...
      ** NOTE! you should try this in development before pushing to your production site
    *** END IREACH ****
  EOT

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~>3.2"
  s.add_dependency 'jquery-rails', "~>3.1"
  s.add_dependency 'jquery-ui-rails', "~>5.0"
  s.add_dependency 'jquery-ui-themes', "~>0.0"
  s.add_dependency "mail_manager", "~>3.2"
  s.add_dependency "newsletter", "~>3.2"
  s.add_dependency 'cancancan', '~>1.9'
  s.add_development_dependency "mysql2", "~>0.3"
end
