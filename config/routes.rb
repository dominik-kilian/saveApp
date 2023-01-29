Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    collection do
      get :tiktok_type
      get :youtube_type
      get :movie_type
      get :clothes_type
      get :other_type
    end
  end

end
