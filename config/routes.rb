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
  root 'subjects#home_page'
# devise_scope :user do
#   root 'devise/sessions#new'
# end
authenticated :admin do
  root 'admin/subjects#index', :as => "admin"
end
  namespace :admin do
    resources :users
    resources :subjects do
      resources :pages  
        resources :instructions
        resources :questions  
    end 
  end
end

