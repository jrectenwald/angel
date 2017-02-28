class User < ApplicationRecord
  has_many :response_histories
  has_many :orders
end
