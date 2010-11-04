ComicCollector::Application.routes.draw do
  devise_for :users

  resources :issues
  
  root :to => 'home#index'
end
