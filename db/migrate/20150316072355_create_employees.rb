class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :cellphone_no

      t.timestamps null: false
    end
  end
end
