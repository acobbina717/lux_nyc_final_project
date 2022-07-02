class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, status: 200
  end

  def auth
    user = User.find_by(id: session[:user_id])
    if user
      render json: user, status: 200
    else
      render json: {error: "Not authorized"}, status: 401
    end
  end

  def signup
    user = User.create!(user_params)
    session[:user_id] = user.id
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
    params.permit(:username, :email, :password)
  end

end
