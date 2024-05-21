resources :users, only: [:index, :create, :update, :destroy, :new] do
end

resources :contents, only: [:index, :create] do
end