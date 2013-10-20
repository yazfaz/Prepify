Prepify::Application.routes.draw do
  
    resources :subjects do
      resources :pages
    end
  

  namespace :admin do
    resources :subjects do
      resources :pages 
        resources :instructions
        resources :questions  
    
    end
  end 
end
