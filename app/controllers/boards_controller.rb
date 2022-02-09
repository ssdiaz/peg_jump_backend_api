class BoardsController < ApplicationController

  def index
    boards = Board.all
    render json: BoardSerializer.new(boards) 
  end


  def show
    board = Board.first
    # render json: tiles, only: [:id, :options, :removes, :active]
    render json: BoardSerializer.new(board) #using FastJson
  end


  def game_params
    params.require(:board).permit(:game_id)
end

end