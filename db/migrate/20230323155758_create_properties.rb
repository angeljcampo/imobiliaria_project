class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.integer :operation
      t.integer :business_type
      t.string :price_type
      t.float :price
      t.integer :commune_id
      t.string :address
      t.float :area
      t.integer :room_quantity
      t.integer :bath_quantity

      t.timestamps
    end
  end
end
