class BoardsController < ApplicationController

    def show
      board = Board.first
      # render json: tiles, only: [:id, :options, :removes, :peg]
      render json: BoardSerializer.new(board) #using FastJson
    end

end