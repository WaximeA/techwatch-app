class Post < ApplicationRecord
  validates_presence_of :title, :content, :category_id

  has_many :comments
  belongs_to :category
end
