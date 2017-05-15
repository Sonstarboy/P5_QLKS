class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.references :agreement, foreign_key: true
      t.string :code
      t.date :bill_date
      t.integer :other_cost
      t.integer :total_amount
      t.string :description

      t.timestamps
    end
  end
end
