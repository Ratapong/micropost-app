MicropostApp::Application.routes.draw do

  root :to => "microposts#index"

  resources :users, :except => [:destroy]  do
    member do
      get :follower, :following
    end
  end

  resources :microposts, :only => [:index, :create, :destroy]
  resources :relationships, :only => [:create, :destroy]
  resources :user_sessions, :only => [:new, :create, :destroy]

  match "login" => "user_sessions#new"
  match "logout" => "user_sessions#destroy"
  match "edit_profile" => "users#edit"

end
