class Post < ApplicationRecord
  validates_presence_of :title, :content, :category_id, :user_id

  has_many :comments
  belongs_to :category
  belongs_to :user
end
