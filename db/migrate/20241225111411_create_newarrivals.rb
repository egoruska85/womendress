class CreateNewarrivals < ActiveRecord::Migration[7.0]
  def change
    create_table :newarrivals do |t|
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
