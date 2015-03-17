class AddAssociations < ActiveRecord::Migration  	  	
  def change
  	  	add_column(:employees, :agency_id, :integer)
  end
end




