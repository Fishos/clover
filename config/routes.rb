Rails.application.routes.draw do
  get 'winners/index'

  get 'winners/show'

  get 'winners/new'

  get 'winners/edit'

  get 'winners/create'

  get 'winners/update'

  get 'winners/destroy'

  get 'winable_products/index'

  get 'winable_products/show'

  get 'winable_products/new'

  get 'winable_products/edit'

  get 'winable_products/create'

  get 'winable_products/update'

  get 'winable_products/destroy'

  get 'users/index'

  get 'users/show'

  get 'tickets/index'

  get 'tickets/show'

  get 'tickets/new'

  get 'tickets/edit'

  get 'tickets/create'

  get 'tickets/update'

  get 'tickets/destroy'

  get 'distribution_channels/index'

  get 'distribution_channels/show'

  get 'distribution_channels/new'

  get 'distribution_channels/edit'

  get 'distribution_channels/create'

  get 'distribution_channels/update'

  get 'distribution_channels/destroy'

  get 'giveaway_action_settings/index'

  get 'giveaway_action_settings/show'

  get 'giveaway_action_settings/new'

  get 'giveaway_action_settings/edit'

  get 'giveaway_action_settings/create'

  get 'giveaway_action_settings/update'

  get 'giveaway_action_settings/destroy'

  devise_for :users
  resources :giveaways
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'giveaways#index'
end
