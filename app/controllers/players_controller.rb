class PlayersController < ApplicationController

    def index
        players = Player.all
        render json: PlayerSerializer.new(players) 
    end


    def show
        player = Player.find_by(id: params[:id])
        render json: {id: player.id, name: player.name} 
    end

    def create
        player = Player.new(player_params)
        if player.save
            render json: PlayerSerializer.new(player), status: :accepted
        else
            render json: {errors: player.errors.full_messages}, status: :unprocessible_entity
        end
    end


    private

    def player_params
        params.require(:player).permit(:name) 
    end

end