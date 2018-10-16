class CreateCabinets < ActiveRecord::Migration[5.2]
  def change
    create_table :cabinets do |t|
      t.belongs_to :library, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
