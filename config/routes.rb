Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/index'
  # authenticated :user do
  #   root 'dashboard#index', as: :authenticated_root
  # end
  devise_scope :user do
    root 'devise/sessions#new'
  end
  # root to: "pages#index"
end
