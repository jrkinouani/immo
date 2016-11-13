Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :admins
=======
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

>>>>>>> df1f48e3080fb8ec2148445642cd38edb5cec853
  root 'static_pages#home'
   get  "apropos" => 'static_pages#apropos'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
