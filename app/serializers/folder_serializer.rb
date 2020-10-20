class FolderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :folder_wikis

  def folder_wikis
    object.wikis
  end
end
