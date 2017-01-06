Rails.application.routes.draw do
  resources :emailer_forms, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'emailer_forms#new'
  post '/' => 'emailer_forms#create'

end
