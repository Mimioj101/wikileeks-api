class Bookmark < ApplicationRecord
    belongs_to :user
    belongs_to :wiki
    belongs_to :folder
end
