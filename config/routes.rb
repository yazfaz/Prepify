Prepify::Application.routes.draw do
 
  resources :posts

  devise_for :users, controllers: { registrations: "registrations"} 
  resources :users do
    resources :subjects do 
      get "complete"
      resources :instructions
      resources :questions
    end
  
end

root 'subjects#home_page'


  namespace :admin do
    resources :users
    resources :subjects do
      resources :pages  
        resources :instructions
        resources :questions  
    end 
  end
end

