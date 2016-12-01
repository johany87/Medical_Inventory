class RemoveIconFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :icon, :varchar
  end
end
