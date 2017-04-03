Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins

  root 'static_pages#home'
   get  "/apropos" => 'static_pages#apropos'
   get  "/saisonniere" => 'static_pages#saisonniere'
   get  "/capetown" => 'static_pages#capetown'
   get  "/reunion" => 'static_pages#reunion'
    get  "/galerie" => 'static_pages#galerie'
    get "/equipe" => 'static_pages#equipe'
    match '/contacts',     to: 'contacts#new',             via: 'get'
    resources "contacts", only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
