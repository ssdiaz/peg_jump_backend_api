class TilesController < ApplicationController

  def index
      tiles = Tile.all
      render json: TileSerializer.new(tiles) #using FastJson
  end
  
  # def show
  #   tile = Tile.find_by(id: params[:id])
  #   render json: TileSerializer.new(tile)
  # end

  # def create
  #   tile = Tile.create(tile_params)

  #   if tile.save
  #       render json: TileSerializer.new(tile)
  #   else
  #       render json: {errors: tile.errors.full_messages}, status: :unprocessible_entity
  #   end
  # end

  
  # private

  # def tile_params
  #   params.require(:tile).permit(:options, :removes, :active, :board_id, :number)
  # end

end