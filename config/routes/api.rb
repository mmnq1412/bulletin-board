resources :users, only: [:index, :create, :update, :destroy] do
end

resources :contents, only: [:index, :create, :update] do
end