Prepify::Application.routes.draw do
 
  devise_for :users, controllers: { registrations: "registrations"} 
  resources :users do
    resources :subjects do 
      get "complete"
      resources :instructions
      resources :questions
    end
  
end

# root 'subjects#index'
  root 'admin/subjects#index'
# devise_scope :user do
#   root 'devise/sessions#new'
# end

  namespace :admin do
    # resources :users
    resources :subjects do
      resources :pages  
        resources :instructions
        resources :questions  
    end 
  end
end

