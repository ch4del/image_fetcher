require 'sidekiq/web'

Rails.application.routes.draw do
  
  resources :links
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  get "/pages/search_images" => "links#index"
  post 'save' => 'links#save', as: :save
  
  resources :pages do
    collection do
      get :search_images
    end
  end


  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
