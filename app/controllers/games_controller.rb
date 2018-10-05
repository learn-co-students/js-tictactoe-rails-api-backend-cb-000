class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    render json: Game.all
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
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

  private

  def game_params
    params.permit(state: [])
  end


end
