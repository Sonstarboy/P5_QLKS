class CreateAgreementServices < ActiveRecord::Migration[5.0]
  def change
    create_table :agreement_services do |t|
      t.references :agreement, foreign_key: true
      t.references :service, foreign_key: true
      t.integer :unit_price
      t.integer :amount
      t.integer :total_amount

      t.timestamps
    end
  end
end
