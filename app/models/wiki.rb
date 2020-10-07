class Wiki < ApplicationRecord
    has_many :bookmarks
    has_many :users, through: :bookmarks
    has_many :folders, through: :bookmarks

end
