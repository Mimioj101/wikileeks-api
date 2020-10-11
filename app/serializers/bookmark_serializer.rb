class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :wiki_id, :folder_id
end
