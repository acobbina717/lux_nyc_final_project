class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :gender
      t.integer :dob
      t.string :location
      t.string :password_digest

      t.timestamps
    end
  end
end
