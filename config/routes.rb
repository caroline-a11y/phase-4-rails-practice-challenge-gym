Rails.application.routes.draw do
  resources :gyms, only: [:show, :create, :destroy] do
    resources :memberships, only: [:create]
  end

  resources :clients, only: [:show]

  get '/clients/:id/total_membership_charge', to: 'clients#total_membership_charge', as: 'total_membership_charge'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
