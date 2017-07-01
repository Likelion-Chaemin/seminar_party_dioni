Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  concern :memberable do
    resources :members
  end

  resources :places, concerns: :memberable, shallow: true
end
