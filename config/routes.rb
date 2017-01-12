Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins

  root 'static_pages#home'
   get  "/apropos" => 'static_pages#apropos'
   get  "/saisonniere" => 'static_pages#saisonniere'
   get  "/capetown" => 'static_pages#capetown'
   get  "/reunion" => 'static_pages#reunion'
    get  "/galerie" => 'static_pages#galerie'
  get "/we-work-we-wait.mp4", :to => redirect("/videos/we-work-we-wait.mp4")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
