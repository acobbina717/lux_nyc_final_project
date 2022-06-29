class CreateReviewComments < ActiveRecord::Migration[7.0]
  def change
    create_table :review_comments do |t|
      t.integer :user_id # user id
      t.integer :review_id # review id
      t.string :comment # user comment on the review
      t.float :rating # rating of the comment on the review

      t.timestamps
    end
  end
end
