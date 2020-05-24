Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :plants
  get 'welcome/about_us'
  get 'welcome/services'
  get 'welcome/blog'
  get 'welcome/contact_us'
end
