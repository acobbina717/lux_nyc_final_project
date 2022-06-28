class CreateRoomTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :room_types do |t|
      t.integer :hotel_id
      t.integer :bed_count
      t.float :base_rate
      t.float :rate
      t.integer :total_inventory
      t.integer :total_reserved
      t.string :type
      t.string :description

      t.timestamps
    end
  end
end
