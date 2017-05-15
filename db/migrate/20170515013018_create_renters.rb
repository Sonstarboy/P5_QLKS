class CreateRenters < ActiveRecord::Migration[5.0]
  def change
    create_table :renters do |t|
      t.string :name
      t.integer :sex
      t.string :address
      t.string :id_number
      t.string :phone
      t.string :citizenship

      t.timestamps
    end
  end
end
