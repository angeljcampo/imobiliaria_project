Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  root 'properties#index'
  resources :properties do
    member do
      resources :leads
    end
  end
  
end
