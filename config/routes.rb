Rails.application.routes.draw do
  get 'music/show'

  get 'about/show'

  get 'contact/show'

  get 'gallery/index'

  root to: 'visitors#index'

  resources :bio
  resources :presses
end
