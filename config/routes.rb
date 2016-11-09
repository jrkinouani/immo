Rails.application.routes.draw do
  devise_for :admins
  root 'static_pages#home'
   get  "apropos" => 'static_pages#apropos'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
