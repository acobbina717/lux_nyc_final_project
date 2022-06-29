class RoomsController < ApplicationController

  def index 
    rooms = Room.all
    render json: rooms, status: 200
  end

  def show 
    room = find_room
    render json: room, status: 200
  end

  def create 
    room = Room.create!(room_params)
    render json: room, status: 201
  end

  def update 
    room = find_room
    room.update!(room_params)
    render json: room, status: 200
  end

  def destroy 
    room = find_room
    room.destroy
    render json: room, status: 204
  end

  private

  def find_room
    Room.find(params[:id])
  end

  def room_params
    params.permit(:hotel_id, :room_type_id, :is_available)
  end

end
