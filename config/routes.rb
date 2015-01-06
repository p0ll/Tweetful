Tweetful::Application.routes.draw do
  devise_for :users

  authenticated :user do
    resources :follows, :except => [:new, :edit, :show, :update]
    resources :tweets, :except => [:new, :edit, :show, :update]
    root :to => 'follows#index', :as => :user_root
  end

  root :to => 'home#index'

  get '/about' => 'home#about'
  

  
end
