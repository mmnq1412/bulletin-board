class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end

Rails.application.routes.draw do
  namespace :api do
    resources :boards, only: [:index]
    
    resources :contents, only: [:create]  # 新しく追加した行
  end
end