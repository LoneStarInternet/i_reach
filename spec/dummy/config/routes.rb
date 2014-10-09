Rails.application.routes.draw do

  resources :members

  mount IReach::Engine => "/"

  root to: 'i_reach/welcome#index'
end
