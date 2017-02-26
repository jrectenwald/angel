Rails.application.routes.draw do

  root to: "companies#index"

  resources :questions
  resources :conversations do
    collection do
      get "dashboard"
    end
  end
  resources :companies
  resources :companies do
    post "answer"
  end
  resources :faqs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
