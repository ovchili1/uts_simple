class Thema < ApplicationRecord

  has_many :test_themas
  has_many :tests, through: :test_themas

end
