class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :code
      t.string :price
      t.string :status
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
