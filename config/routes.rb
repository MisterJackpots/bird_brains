Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hotspots', to: 'hotspots#index'
  get '/hotspots/new', to: 'hotspots#new'
  get '/hotspots/:id', to: 'hotspots#show'
  get '/birds', to: 'birds#index'
  get '/birds/:id', to: 'birds#show'
  get '/hotspots/:hotspot_id/birds', to: 'hotspot_birds#index'
  post '/hotspots', to: 'hotspots#create'
end
