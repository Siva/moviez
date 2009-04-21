ActionController::Routing::Routes.draw do |map|
  map.resources :theaters
  map.resources :movies
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
