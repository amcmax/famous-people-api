Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/persons', to: 'persons#index'
      post '/persons', to: 'persons#create'
      delete '/persons/:id', to: 'persons#destroy'
    end
  end
end