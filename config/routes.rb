Rails.application.routes.draw do
  root to: "cocktails#index"
resources :cocktails, only: [:create, :index, :edit, :update, :new, :show, :destroy] do
    resources :doses, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
