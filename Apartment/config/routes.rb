Rails.application.routes.draw do
  resources :flats
  root 'home#index'

  resources :properties do
  resources :flats
	end
  devise_for :users, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
