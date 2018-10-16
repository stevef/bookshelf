class CreateBookshelves < ActiveRecord::Migration[5.2]
  def change
    create_table :bookshelves do |t|
      t.references :library, index: true
      t.integer :public_id, null: false
    end
  end
end
