class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(state: ["X", "", "", "", "", "", "", "", ""])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 201
  end

  def update
    @game = Game.update(state: params[:state])
    render json: @game, status: 201
  end
end
