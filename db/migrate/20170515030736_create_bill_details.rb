class CreateBillDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_details do |t|
      t.references :bill, foreign_key: true
      t.references :service, foreign_key: true
      t.integer :unit_price
      t.integer :amount
      t.integer :total

      t.timestamps
    end
  end
end
