Rails.application.routes.draw do
  
  devise_for :users

  # Potenital security page
  get 'pages/index'

  # User dashboard
  scope module: 'user', path: 'user' do
    get 'dashboard/index'
  end

  # CRM
  scope module: 'crm', path: 'crm' do
    resources :client_companies
    resources :clients
  end

  # Campaign Management
  scope module: 'campaign_management', path: 'campaign_management' do
    resources :campaigns
    resources :campaign_results
  end

  # Prospect Database
  scope module: 'prospect_database', path: 'prospect_database' do
    resources :prospects
    resources :prospect_characteristics
    resources :prospect_companies
    resources :prospect_history
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/index'
  authenticated :user do
    root 'user/dashboard#index'
    # root 'dashboard#index', as: :authenticated_root
  end
  devise_scope :user do
    root 'devise/sessions#new'
  end
  # root to: "pages#index"
end
