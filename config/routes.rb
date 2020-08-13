Rails.application.routes.draw do
resources :cocktails, only: [:create, :index, :new, :show] do
    resources :doses, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
