Rails.application.routes.draw do
  devise_for :users
  root to:"books#index"
  resources :books, only:[:index, :new, :create, :show,:detroy] do
    resources :preparations, only:[:index,:new, :create, :edit, :update]
  end
end
