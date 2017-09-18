class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create( game_params )
    render json: @game
  end

  def show
    @game = Game.find( params[:id] )
    render json: @game
  end

  def update
    @game = Game.find( params[:id] )
    @game.update( game_params )
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.permit(state: [] )
  end

end
