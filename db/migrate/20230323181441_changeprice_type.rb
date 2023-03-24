class ChangepriceType < ActiveRecord::Migration[6.1]
  def change
    change_column :properties, :price_type, 'integer USING CAST(price_type AS integer)' 
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
