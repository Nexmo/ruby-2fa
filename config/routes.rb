Rails.application.routes.draw do
  resource :user,    only: [:new, :create, :edit, :update]
  resource :session, only: [:new, :create, :destroy]

  root to: 'pages#index'
end
