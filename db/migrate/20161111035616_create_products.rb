class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :total_view
      t.integer :category_id
      t.integer :manufacturer_id
      t.float :price

      t.timestamps
    end
  end
end
