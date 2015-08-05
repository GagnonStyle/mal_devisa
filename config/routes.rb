Rails.application.routes.draw do
  devise_for :admins, :path => '',
             :path_names => {:sign_in => 'admin_login'}

  get 'about/show'

  get 'contact/show'

  root to: 'visitors#index'

  resources :bio
  resources :presses
  resources :videos
  resources :photos
end
