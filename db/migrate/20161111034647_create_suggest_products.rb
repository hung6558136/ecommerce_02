class CreateSuggestProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :suggest_products do |t|
      t.string :message
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
  end
end
