Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'
  get '/parents', to: 'parents#index'
  get '/parents/:id', to: 'parents#show'
  get '/pieces', to: 'pieces#index'
end
