class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id # user id
      t.integer :hotel_id # hotel id
      t.string :review # user review of the hotel
      t.float :rating # rating of the hotel review

      t.timestamps
    end
  end
end
