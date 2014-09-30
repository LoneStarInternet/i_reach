IReach::Engine.routes.draw do
  mount MailManager::Engine, at: '/admin/mail_manager'
end
