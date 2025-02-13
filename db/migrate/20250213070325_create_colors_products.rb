class CreateColorsProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :colors_products do |t|
      t.string :color_id
      t.string :product_id

      t.timestamps
    end
  end
end
