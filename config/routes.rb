Rails.application.routes.draw do
  devise_for :admins, :path => '',
             :path_names => {:sign_in => 'admin_login'}

  get 'music/show'

  get 'about/show'

  get 'contact/show'

  get 'gallery/index'

  get 'admin', to: 'admin#login'

  root to: 'visitors#index'

  resources :bio
  resources :presses
end
