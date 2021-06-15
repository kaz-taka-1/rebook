Rails.application.routes.draw do
  get 'outputs/new'
  devise_for :users
  root to:"books#index"
  resources :books do
    resources :preparations
    resources :outputs, only:[ :new, :create, :edit, :update, :detroy]
  end
end
