class ProductPrice < ActiveRecord::Base
	has_many :products
	belongs_to :dealer_store
end
