class Folder < ApplicationRecord
    belongs_to :user
    has_many :bookmarks
    has_many :wikis, through: :bookmarks
end
