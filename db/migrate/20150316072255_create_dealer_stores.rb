class CreateDealerStores < ActiveRecord::Migration
  def change
    create_table :dealer_stores do |t|
      t.string :branch_name
      t.text :adress

      t.timestamps null: false
    end
  end
end
