# == Schema Information
#
# Table name: products
#
#  id                 :bigint           not null, primary key
#  title              :string
#  sales_order_number :string(24)
#
class Product < ApplicationRecord

end
