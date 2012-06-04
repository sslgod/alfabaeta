Baeta::Application.routes.draw do
 # get "comments/create", :via => [:post]

  get "comments/destroy"

   resources :sites

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
  match 'createcomment'=> 'comments#create',:via => [:post]
end
