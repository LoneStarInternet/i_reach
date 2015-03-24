Rails.application.routes.draw do

  resources :members

  #mount MailManager::Engine => "/admin"
  #mount Newsletter::Engine => "/admin", as: 'news'
  mount IReach::Engine => "/admin"

  root to: 'i_reach/welcome#index'
end
