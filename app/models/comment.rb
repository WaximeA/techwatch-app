class Comment < ApplicationRecord
  validates_presence_of :name, :message

  belongs_to :post
end
