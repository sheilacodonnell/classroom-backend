Rails.application.routes.draw do
  namespace :api do
    resources :teachers
    resources :assignments
  end
end
