Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rooms#index'

  resources :rooms, only: [:index, :show, :create], param: :token

  mount ActionCable.server => '/cable'
end
