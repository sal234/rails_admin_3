class ChangeColumnSalesOrderNumberToProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :sales_order_number, :string, :limit => 24
  end
end
