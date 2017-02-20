Rails.application.routes.draw do
  resources :companies
  resources :customer_responses
  resources :companies do
    post "answer"
  end
  resources :faqs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
