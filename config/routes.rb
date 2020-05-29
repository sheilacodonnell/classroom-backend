Rails.application.routes.draw do
  namespace :api do
    resources :teachers do
      resources :assignments do
        resources :submissions
      end
    end
  end
end
