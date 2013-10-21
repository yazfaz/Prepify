Prepify::Application.routes.draw do
  
    resources :subjects do
      resources :pages
    end
  
root 'admin/subjects#index'

  namespace :admin do
    resources :subjects do
      resources :pages do
        resources :instructions
        resources :questions  
      end
    end
  end 
end
