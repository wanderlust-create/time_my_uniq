Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/about', to: 'welcome#about'
  get '/auth/google_oauth2/callback', to: 'users#authorize'

end
