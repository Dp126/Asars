class Product < ActiveRecord::Base
	has_many :sales
	belongs_to :product_price
end
