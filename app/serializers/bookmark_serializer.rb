class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :wiki_id
end
