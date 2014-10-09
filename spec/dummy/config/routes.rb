Rails.application.routes.draw do

  resources :members

  mount IReach::Engine => "/"
end
