class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :birthday
      t.integer :sex
      t.string :phone
      t.string :address
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
