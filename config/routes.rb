Rails.application.routes.draw do
  get 'outputs/new'
  devise_for :users
  root to:"books#index"
  resources :books, only:[:index, :new, :create, :show,:detroy] do
    resources :preparations
    resources :outputs, only:[ :new, :create, :edit, :update, :detroy]
  end
end
