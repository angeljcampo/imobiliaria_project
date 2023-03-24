class CreateAddPropImagesToProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :add_prop_images_to_properties do |t|
      add_column :properties, :prop_images, :string
      #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
      t.timestamps
    end
  end
end
