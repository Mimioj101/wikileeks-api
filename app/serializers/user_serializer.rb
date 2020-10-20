class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :my_wikis, :my_folders

    def my_wikis
      object.wikis
    end

    def my_folders
      object.folders
    end

end
