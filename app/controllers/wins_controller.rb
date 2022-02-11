class WinsController < ApplicationController
    def index
        wins = Win.all
        render json: WinSerializer.new(wins)
    end

    def create
        win = Win.new(win_params)
        if win.save
            render json: WinSerializer.new(win), status: :accepted
        else
            render json: {errors: win.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def win_params
        params.require(:win).permit(:move_count, :win_count, :player_id) 
    end


end  