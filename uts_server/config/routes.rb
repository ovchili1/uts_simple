Rails.application.routes.draw do
  resources :tests
  resources :questions
  resources :themas
  resources :users, except: [:create]


  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
