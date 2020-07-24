class GamesController < ApplicationController
  
  def index
    @games = Game.all
    render json: @games, status: 200
  end

  def create
    # shouldn't there be a default :state with the array of empty string values?
    # but how do you use a default attribute value with strong params? 
    @game = Game.create(game_params)
    render json: @game, status: 201

  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    render json: @game, status: 200
  end


  private

  def game_params
    params.permit(state: [])
  end

end
