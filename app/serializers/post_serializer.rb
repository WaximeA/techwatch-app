class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_at, :updated_at, :comments_count,  :comments, :category_id, :user_id

  def comments_count
    Comment.where(post_id: object.id).count
  end
end