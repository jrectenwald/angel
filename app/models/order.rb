class Order < ApplicationRecord
  has_many :response_histories
  belongs_to :product
  belongs_to :user
end
