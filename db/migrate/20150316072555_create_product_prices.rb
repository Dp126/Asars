class CreateProductPrices < ActiveRecord::Migration
  def change
    create_table :product_prices do |t|
      t.decimal :price
      t.date :effective_date

      t.timestamps null: false
    end
  end
end
