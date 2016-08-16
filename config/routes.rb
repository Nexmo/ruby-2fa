Rails.application.routes.draw do
  resource :user,    only: [:new, :create, :edit, :update]
  resource :session, only: [:new, :create, :destroy]
  resource :verification, only: [:new, :create]
  
  root to: 'pages#index'
end
