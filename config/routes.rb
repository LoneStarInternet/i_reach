IReach::Engine.routes.draw do
  mount MailManager::Engine, at: '/admin/mail_manager'
  mount Newsletter::Engine, at: '/admin/newsletter'
end
