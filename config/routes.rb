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
    resources :users
    resources :subjects do
      resources :pages do
        post 'sort', :on => :collection
      end
      resources :instructions
      resources :questions  
    end

    get 'subjects/new/:section' => 'subjects#new', as: 'new_subject_with_section'

  end

  
  

end

