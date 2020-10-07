class WikiSerializer < ActiveModel::Serializer
  attributes :id, :page_id, :page_title, :snippet, :img, :cat_title, :cat_id
end
