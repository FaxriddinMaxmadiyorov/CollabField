Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users, :controllers => { :registrations => "registrations" }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
  resources :posts do
    collection do
      get 'hobby'
      get 'team'
      get 'study'
    end
  end

  namespace :private do
    resources :conversations, only: [:create] do
      member do
        post :close
      end
    end
    resources :messages, only: [:index, :create]
  end
end
