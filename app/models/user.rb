class User < ActiveRecord::Base
  #has_many :posts
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :email, presence: true, length: { minimum: 7, maximum: 255 }, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6, maximum: 10 }

  has_secure_password
end
