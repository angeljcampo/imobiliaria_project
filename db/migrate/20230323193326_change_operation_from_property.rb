class ChangeOperationFromProperty < ActiveRecord::Migration[6.1]
  def change
    rename_column :properties, :operation, :property_type
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
