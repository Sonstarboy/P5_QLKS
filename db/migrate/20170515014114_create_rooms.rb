class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :code
      t.integer :status
      t.references :kind_room, foreign_key: true

      t.timestamps
    end
  end
end
