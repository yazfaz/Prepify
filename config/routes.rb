Prepify::Application.routes.draw do
 
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
    match 'subjects/new/math' => 'subjects#new_math', via: [:get]
    match 'subjects/new/reading' => 'subjects#new_reading', via: [:get, :post]
    match 'subjects/new/writing' => 'subjects#new_writing', via: [:get, :post]
    resources :users
    resources :subjects do

      resources :pages  
        resources :instructions
        resources :questions  
    end 
  end
end

