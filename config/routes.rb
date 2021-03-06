Rails.application.routes.draw do
  
  devise_for :users
  resources :user_stocks, except: [:show,:edit,:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: 'welcome#index'
   get 'welcome/about'
   get 'welcome/index', to: 'welcome#index'

   get 'my_portfolio', to: 'users#my_portfolio'
   get 'search_stocks', to: 'stocks#search'
end