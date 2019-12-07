class Test < ApplicationRecord
  belongs_to :teacher


  has_many :test_themas
  has_many :themas, through: :test_themas
end
