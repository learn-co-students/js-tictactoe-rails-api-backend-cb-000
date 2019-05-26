class GamesController < ApplicationController
  before_action :set_game, only:[:show,:update]
  # Add your GamesController code here
  def index
    @games = Game.all
    render json: @games, status:201
  end

  def show
    render json: @game, status:201
  end

  def update
    @game.update_attributes(state:params[:state])
    render json: @game, status:201
  end

  def create
    @game = Game.new(state:params[:state])
    @game.save
    render json: @game,status:201
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
