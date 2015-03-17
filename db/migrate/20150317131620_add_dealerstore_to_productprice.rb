class AddDealerstoreToProductprice < ActiveRecord::Migration
  def change
  	add_column(:product_prices, :dealer_store_id, :integer)
  end
end
