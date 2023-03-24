class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :rut, default: '55.555.555-5'
      t.string :email
      t.string :phone
      t.string :note
      t.integer :property_id
      t.timestamps
    end
  end
end
