class AddForeignKeyToProperty < ActiveRecord::Migration[6.1]
  def change
    change_column :properties, :commune_id, :integer, foreign_key: true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
