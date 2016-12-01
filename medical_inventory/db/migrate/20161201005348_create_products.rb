class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :icon
      t.integer :laboratory_id

      t.timestamps
    end
  end
end
