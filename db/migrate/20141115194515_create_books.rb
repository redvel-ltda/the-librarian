class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false, index: true
      t.string :editorial, null: false, index: true
      t.string :original_title
      t.string :translation
      t.integer :edition, index: true
      t.date :edition_date
      t.string :edition_place
      t.integer :publication_year, index: true
      t.string :isbn

      t.timestamps
    end
    
  end
end
