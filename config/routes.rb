Rails.application.routes.draw do
   mount ActionCable.server => '/cable'
   root 'sessions#new'
   resources :messages, only: [:index]
   resources :sessions, only: [:new, :create]
end
