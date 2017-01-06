Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :emailer_forms, only: [:new, :create], path_names: { new: "" }
  get '/' => 'emailer_forms#new', as: 'sent'
  post '/' => 'emailer_forms#create'


end
