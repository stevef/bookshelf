class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|

      t.timestamps
    end
  end
end
