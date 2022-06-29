class ReviewCommentsController < ApplicationController

  def show 
    comment = find_review_comment
    render json: comment, status: 200
  end

  def create
    comment = ReviewComment.create!(review_comment_params)
    render json: comment, status: 201
  end

  def update
    comment = find_review_comment
    comment.update!(review_comment_params)
    render json: comment, status: 200
  end

  def destroy
    comment = find_review_comment
    comment.destroy
    render json: comment, status: 204
  end

  private

  def find_review_comment
    ReviewComment.find(params[:id])
  end

  def review_comment_params
    params.permit(:review_id, :comment, :user_id)
  end

end
