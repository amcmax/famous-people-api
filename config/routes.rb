Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/persons', to: 'persons#index'
    end
  end
end