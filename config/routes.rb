Rails.application.routes.draw do
  root 'pages#home'
  get '/admin/dashboard', to: 'admin#dashboard', as: 'admin_dashboard'
  post '/admin/ban/:id', to: 'admin#ban_user', as: 'admin_ban_user'
  post '/admin/unban/:id', to: 'admin#unban_user', as: 'admin_unban_user'
  devise_for :users, controllers: { 
    registrations: 'registrations' 
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
