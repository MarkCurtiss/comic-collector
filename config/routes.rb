ComicCollector::Application.routes.draw do
  resources :issues
  
  root :to => 'home#index'
end
