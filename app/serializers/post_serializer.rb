class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :intro, :extended, :published_at
end
