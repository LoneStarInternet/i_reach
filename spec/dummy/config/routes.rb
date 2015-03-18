Rails.application.routes.draw do

  resources :members

  #mount MailManager::Engine => "/admin"
  #mount Newsletter::Engine => "/admin"
  mount IReach::Engine => "/"

  root to: 'i_reach/welcome#index'
end
