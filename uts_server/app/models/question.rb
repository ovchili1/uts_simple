class Question < ApplicationRecord
  belongs_to :thema
  belongs_to :teacher
  
  has_many :answers
end
