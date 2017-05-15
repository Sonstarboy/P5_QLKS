class CreateAgreements < ActiveRecord::Migration[5.0]
  def change
    create_table :agreements do |t|
      t.string :code
      t.references :renter, foreign_key: true
      t.references :employee, foreign_key: true
      t.date :date_contract
      t.integer :status

      t.timestamps
    end
  end
end
