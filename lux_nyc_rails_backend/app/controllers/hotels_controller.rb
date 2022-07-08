class HotelsController < ApplicationController

  def index
    hotels = Hotel.all
    byebug
    render json: hotels, status: 200
  end

  def show
    hotel = find_hotel
    render json: hotel, status: 200
  end

  def create
    hotel = Hotel.create!(hotel_params)
    render json: hotel, status: 201
  end

  def update 
    hotel = find_hotel
    hotel.update!(hotel_params)
    render json: hotel, status: 200
  end

  # def destroy
  #   hotel = find_hotel
  #   hotel.destroy
  #   render json: hotel, status: 204
  # end


  private

  def find_hotel
    Hotel.find(params[:id])
  end

  def hotel_params
    params.permit(:name, :location, :description, :amenities, :rooms_available, :rating, :images)
  end

end
