class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_at, :updated_at, :comments_count,  :comments

  def comments_count
    Comment.where(post_id: object.id).count
  end
end