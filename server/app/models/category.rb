class Category < ApplicationRecord
  validates_presence_of :name, :description, :user_id

  has_many :posts
  belongs_to :user
end
