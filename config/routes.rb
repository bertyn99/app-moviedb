Rails.application.routes.draw do
  root to: 'movies#index'
 post to: 'movies#search', as: 'search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
