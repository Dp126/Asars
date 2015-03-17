class AddDealerToDealerstore < ActiveRecord::Migration
  def change
  	add_column(:dealer_stores, :dealer_id, :integer)
  end
end
