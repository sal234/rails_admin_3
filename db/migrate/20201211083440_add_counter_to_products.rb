class AddCounterToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :counter, :integer, :limit => 8 #By default SQL String limit 255 character 
    #Ex:- :limit => 40
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
