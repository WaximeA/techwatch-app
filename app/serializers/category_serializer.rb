class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :posts_count, :posts

  def posts_count
    Post.where(category_id: object.id).count
  end
end
