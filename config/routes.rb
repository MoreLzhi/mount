Mountwiki::Application.routes.draw do
  resources :continents
  resources :regions
  resources :mounts
  resources :routes

  root :to => "routes#index"

end
