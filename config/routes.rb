Rails.application.routes.draw do
  namespace :api do
    resources :teachers do
      resources :assignments
    end
  end
end
