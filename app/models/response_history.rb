class ResponseHistory < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :order
end
