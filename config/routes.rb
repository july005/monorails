Rails.application.routes.draw do
 
  resources :messages
  resources :articles do
  	resources :comments
	end
 
  root 'welcome#index'
end