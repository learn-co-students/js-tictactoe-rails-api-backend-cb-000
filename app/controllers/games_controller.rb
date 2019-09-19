class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]
  # Add your GamesController code here
  def index 
    @games = Game.all 
    render json: @games 
  end 


  def create 
    @game = Game.create(game_params) 
    render json: @game, status: 201
  end 

  def update 
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game 
  end 

  def show 
    @game = Game.find(params[:id])
    # respond_to do |format|
    #   format.json {render json: @game.to_json(only: [:id, :state])}
    # end 
    render json: @game
    # binding.pry
  end 

  private 

  def game_params 
    params.permit(state: [])
  end 

  def set_game 
    game = Game.find(params[:id])
  end 

end



