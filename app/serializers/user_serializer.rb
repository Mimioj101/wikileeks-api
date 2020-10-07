class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :my_wikis

    def my_wikis
      object.wikis
    end
end
