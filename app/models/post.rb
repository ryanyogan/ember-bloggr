class Post < ActiveRecord::Base
  attr_accessible :author, :extended, :intro, :title, :published_at
  alias_attribute :published_at, :created_at
end
