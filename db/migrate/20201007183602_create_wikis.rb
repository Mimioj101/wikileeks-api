class CreateWikis < ActiveRecord::Migration[6.0]
  def change
    create_table :wikis do |t|
      t.integer :page_id
      t.string :page_title
      t.string :snippet
      t.string :img
      t.string :cat_title
      t.integer :cat_id


      t.timestamps
    end
  end
end
