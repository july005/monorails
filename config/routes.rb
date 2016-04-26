Rails.application.routes.draw do
 
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users
  resources :messages
  resources :articles do
  	resources :comments
	end
  resources :tags, only: [:index, :show]
  root 'welcome#index'


  
end