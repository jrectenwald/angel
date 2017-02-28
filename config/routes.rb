Rails.application.routes.draw do

  resources :users
  resources :response_histories
  resources :products
  resources :orders
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

  scope '/api' do
    scope '/companies' do
      get '/' => 'api#companies'
      get '/:company_id/questions' => 'api#questions'
      get '/:company_id/conversations' => 'api#conversations'
      get '/:company_id/conversation' => 'api#conversation'
    end
    scope '/users' do
      get '/' => 'api#users'
      get '/:user_id' => 'api#user'
    end
  end
end
