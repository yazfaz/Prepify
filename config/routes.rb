Prepify::Application.routes.draw do
  
  devise_for :users
    resources :subjects do
      resources :pages
    end
  
root 'admin/subjects#index'

  namespace :admin do
    resources :subjects do
      resources :pages  
        resources :instructions
        resources :questions  
    end
  end 
end
