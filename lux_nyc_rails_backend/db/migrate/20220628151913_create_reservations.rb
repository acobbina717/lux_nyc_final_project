class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id # user id
      t.integer :room_id # room id
      t.integer :hotel_id # hotel id
      t.datetime :check_in_date # check in date
      t.datetime :check_out_date # check out date
      t.float :total_cost # total cost of the reservation

      t.timestamps
    end
  end
end
