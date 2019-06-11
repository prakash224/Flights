Rails.application.routes.draw do
  resources :countries do
    resources :airports
  end

root "countries#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
