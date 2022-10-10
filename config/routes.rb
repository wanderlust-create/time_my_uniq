Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/about', to: 'welcome#about'
  get '/auth/google_oauth2/callback', to: 'users#create'

  get '/dashboard', to: 'users#dashboard'
  get '/logout', to: 'users#logout'
  post '/logout', to: 'users#logout'
end
