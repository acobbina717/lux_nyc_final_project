class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :room_id
      t.integer :hotel_id
      t.datetime :check_in
      t.datetime :check_out
      t.float :total_cost

      t.timestamps
    end
  end
end
