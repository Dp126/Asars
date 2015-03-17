class AddDealerstoreToEmployee < ActiveRecord::Migration
  def change
  	add_column(:employees, :dealer_store_id, :integer)
  end
end
