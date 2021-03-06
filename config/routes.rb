Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins

  resources :logements, only: [:index, :show]
  resources :reservations, only: [:index, :show, :new, :create]
  resources :charges

  root 'static_pages#home'
   get "/apropos" => 'static_pages#apropos'
   get "/saisonniere" => 'static_pages#saisonniere'
   get "/capetown" => 'static_pages#capetown'
   get "/reunion" => 'static_pages#reunion'
   get "/galerie" => 'static_pages#galerie'
   get "/galerie_vente" => 'static_pages#galerie_vente'
   get "/equipe" => 'static_pages#equipe'
   get "/achat" => 'static_pages#achat'
   get "/gestion" => "static_pages#gestion"
   get "/search" => "static_pages#search"
   get "/.well-known/acme-challenge/:id" => 'pages#letsencrypt'

   match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
