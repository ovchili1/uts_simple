class User < ApplicationRecord
  PASSWORD_FORMAT = /\A(?=.{8,25})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/x


  validates :login, presence: true, length: {minimum: 6}, uniqueness: true
  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}, uniqueness: {case_sensitive: true}
  validates :password, presence: true, format: PASSWORD_FORMAT, on: :create
  validates :password, allow_nil: true, format: PASSWORD_FORMAT, on: :update
  validates_presence_of :type
  has_secure_password
end
