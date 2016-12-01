class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.integer :product_id
      t.integer :quantity
      t.integer :user_id
      t.date :due_date

      t.timestamps
    end
  end
end
