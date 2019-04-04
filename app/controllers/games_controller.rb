class GamesController < ApplicationController
  def update
    @game = Game.find_by(id: params["id"])
    @game.update(game_params)
    render json: @game, status: 200
  end


  def show
    @game = Game.find_by(id: params["id"])
    render json: @game
  end
  def index
    @games = Game.all
    render json: @games
  end
  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end
  private

  def game_params
    params.permit(state: [])
  end


end
