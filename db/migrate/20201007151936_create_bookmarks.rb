class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :wiki_id
      t.integer :folder_id

      t.timestamps
    end
  end
end
