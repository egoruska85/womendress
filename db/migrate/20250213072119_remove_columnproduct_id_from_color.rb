class RemoveColumnproductIdFromColor < ActiveRecord::Migration[7.0]
  def change
     remove_column :colors, :product, :references
  end
end
