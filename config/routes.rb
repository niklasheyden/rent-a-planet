Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only:[:new, :create, :edit, :destroy] do
    resources :planets, only: [:index, :new, :create, :show] do
      resources :bookings, only: [:show, :new, :create, :destroy]
    end
  end
end
