class Question < ApplicationRecord
  belongs_to :company
  belongs_to :conversation
  has_many :response_histories
end
