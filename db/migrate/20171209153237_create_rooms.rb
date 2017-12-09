class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :code
      t.integer :building_id

      t.timestamps
    end
  end
end
