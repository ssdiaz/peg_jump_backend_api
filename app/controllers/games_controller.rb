class GamesController < ApplicationController

    def index
        games = Game.all
        render json: GameSerializer.new(games) 
    end


    def show
        game = Game.find_by(id: params[:id])
        # render json: {id: game.id, player: game.player, board_id: game.board_id} 
        render json: GameSerializer.new(game)
    end

    def create
        # game = Game.new(game_params)
        game = Game.create(game_params)
        if game.save
            render json: GameSerializer.new(game)
        else
            render json: {errors: game.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def game_params
        params.require(:game).permit(:player, :board_id)
    end

end