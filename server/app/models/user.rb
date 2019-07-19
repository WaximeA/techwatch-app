class User < ApplicationRecord
  validates_presence_of :pseudo, :email, :password_digest

  has_secure_password

  has_many :categories
  has_many :posts
  has_many :comments
end
