IReach::Engine.routes.draw do
  mount MailManager::Engine => '/mail_manager'
  # we mount at 'news' to not have a name conflict with newsletters controller
  mount Newsletter::Engine => '/newsletter', as: 'news'
  get '/admin' => 'welcome#index'
end
