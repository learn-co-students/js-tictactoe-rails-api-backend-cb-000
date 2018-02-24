class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games, status: 200
  end

  def show
    game = Game.find_by_id(params[:id])
    render json: game, status: 200
  end

  def create
    game = Game.create(state: params[:state])
    render json: game, status: 201
  end

  def update
    game = Game.find_by_id(params[:id]).update(state: params[:state])
    render json: game, status: 200
  end
end