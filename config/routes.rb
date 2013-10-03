Ttv4::Application.routes.draw do


  scope "(:locale)", :locale => /en|es/ do
    authenticated :user do
      root :to => 'home#index'
    end
    root :to => "home#index"
    devise_for :users
    resources :users
    resources :terms
    resources :dashboard
    resources :searches
  end
end
