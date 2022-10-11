Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/about', to: 'welcome#about'
  get '/auth/google_oauth2/callback', to: 'users#create'

  get '/logout', to: 'users#logout'
  post '/logout', to: 'users#logout'

  namespace :my_uniq_time do
    resources :dashboard, only: %i[index show]
    resources :life_parts
    resources :goals
    resources :actions
    resources :tasks
    resources :positive_affirmations
    resources :meditations
  end
end
