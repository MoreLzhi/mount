Mountwiki::Application.routes.draw do
  devise_for :users

  resources :continents
  resources :regions
  resources :mounts
  resources :routes
  match "/filter" => "routes#filter"
  match "/api/regions/" => "regions#api_regions"
  match "/api/mounts/" => "mounts#api_mounts"

  root :to => "routes#index"
  
end
