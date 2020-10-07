class User < ApplicationRecord
    has_many :bookmarks
    has_many :wikis, through: :bookmarks
    has_many :folders
    has_secure_password
end
