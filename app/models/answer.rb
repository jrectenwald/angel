class Answer < ApplicationRecord
  belongs_to :company
  has_many :customer_responses
end
