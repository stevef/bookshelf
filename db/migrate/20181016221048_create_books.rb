class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :language, null: false
      t.string :isbn, null: false
      t.integer :page_count, null: false, default: 0
      
	  t.belongs_to :bookshelf, foreign_key: true
      t.timestamps
    end
  end
end
