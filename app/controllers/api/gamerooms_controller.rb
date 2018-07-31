class Api::GameroomsController < ApplicationController
  
  def index
    @gamerooms = Gameroom.all
    render json: @gamerooms
  end

  def show
    @gameroom = Gameroom.find(params[:id])
    render json: @gameroom
  end

  def create
    @gameroom = Gameroom.create!(gameroom_params)
    render json: @gameroom
  end

  def update
    @gameroom = Gameroom.find(params[:id])
    @gameroom.update(game_params)
    render json: @gameroom
  end

  def delete
  end

  private
  def gameroom_params
    params.require(:gameroom).permit(:user_id, :p1_life_points, :p2_life_points, :p1_hand_1, :p1_hand_2, :p1_hand_3, :p2_hand_1, :p2_hand_2, :p2_hand_3)
  end

end
