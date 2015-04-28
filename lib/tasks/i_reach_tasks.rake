namespace :i_reach do
  desc "Upgrade application files such as migrations after a gem upgrade"
  task :upgrade do
    Rake::Task['mail_manager:upgrade'].invoke
    Rake::Task['newsletter:upgrade'].invoke
  end
end
