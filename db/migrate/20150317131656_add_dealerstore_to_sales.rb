class AddDealerstoreToSales < ActiveRecord::Migration
  def change
  	add_column(:sales, :dealer_store_id, :integer)
  end
end
