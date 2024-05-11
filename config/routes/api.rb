resources :users, only: [:index, :create, :update, :destroy, :new] do
end

resources :contents, only: [:index] do
end

resources :comments, only: [:index, :create, :update, :destroy] do
end