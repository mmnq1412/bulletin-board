resources :users, only: [:index, :create, :update, :destroy] do
end

resources :contents, only: [:index] do
end