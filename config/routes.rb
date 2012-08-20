InquisitorApp::Application.routes.draw do


  resources :users
  resources :questionnaires
  resources :questions
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'static_pages#home'
  
  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/addquestion', to: 'questions#new'  
end
