Rails.application.routes.draw do
  resources :emailer_forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'emailer_forms#new'

end
