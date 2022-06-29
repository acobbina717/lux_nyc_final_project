class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, status: 200
  end

  def show
    user = find_user
    render json: user, status: 200
  end

  def create
    user = User.create!(user_params)
    render json: user, status: 201
  end

  def update
    user = find_user
    user.update!(user_params)
    render json: user, status: 200
  end

  def destroy
    user = find_user
    user.destroy
    render json: user, status: 204
  end

  private

  def find_user
   User.find(params[:id])
  end

  def user_params
    params.permit(:fullname, :username, :email)
  end

end
