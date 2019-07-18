class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :pseudo, :email, :created_at, :updated_at, :categories_ids, :posts_ids

  def categories_ids
    object.categories.map(&:id)
  end

  def posts_ids
    object.posts.map(&:id)
  end
end
